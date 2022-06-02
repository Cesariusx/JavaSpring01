package com.ladisac.springboot.backend.apirest.controllers;

import java.io.File;
import java.io.IOException;
import java.net.MalformedURLException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import java.util.stream.Collectors;

import javax.management.RuntimeErrorException;
import javax.validation.Valid;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.Resource;
import org.springframework.core.io.UrlResource;
import org.springframework.dao.DataAccessException;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import com.ladisac.springboot.backend.apirest.models.entity.Cliente;
import com.ladisac.springboot.backend.apirest.models.entity.Region;
import com.ladisac.springboot.backend.apirest.models.services.IClienteService;
import com.ladisac.springboot.backend.apirest.models.services.IUploadFileService;

@CrossOrigin( origins = {"http://localhost:4200"}  )	// Cors Para dar acceso a la url de modo que angular pueda comunicarse con la API
@RestController
@RequestMapping("/api")
public class ClienteRestController {
	
	@Autowired
	private IClienteService clienteService; 
	
	@Autowired
	private IUploadFileService uploadService;
	
	// Consulta de TODOS los clientes
	@GetMapping("/clientes")
	public List<Cliente> index(){
		return clienteService.FindAll();
	}
	
	// Consulta de SOLO los clientes segun la paginacion
	@GetMapping("/clientes/page/{page}")
	public Page<Cliente> index( @PathVariable Integer page ){
		Pageable pageable = PageRequest.of(page, 4);
		return clienteService.FindAll(pageable);
	}	
	
/*
	@GetMapping("/clientes/{id}")
	public Cliente show ( @PathVariable Long id ) {
		return clienteService.findById(id);
	}
*/
	@GetMapping("/clientes/{id}")
	public ResponseEntity<?> show ( @PathVariable Long id ) {
		
		Cliente cliente = null;
		Map<String, Object> response = new HashMap<String, Object>();
		
		try {
			cliente = clienteService.findById(id);
		} catch (DataAccessException e) {
			response.put("mensaje","Error al realizar consulta en base de datos");
			response.put("error", e.getMessage().concat(": ").concat(e.getMostSpecificCause().getMessage()) );
			return new ResponseEntity<Map<String, Object>>(response , HttpStatus.INTERNAL_SERVER_ERROR);
		}
		
		if (cliente == null) {
			response.put("mensaje", "El cliente con ID: ".concat(id.toString()).concat(" no existe en la Base de Datos") );
			return new ResponseEntity<Map<String, Object>>(response, HttpStatus.NOT_FOUND);
		}
		
		return new ResponseEntity<Cliente>(cliente, HttpStatus.OK);
		
	}	
	
	
	@PostMapping("/clientes/upload")
	public ResponseEntity<?> upload (@RequestParam("archivo") MultipartFile archivo, @RequestParam("id") Long id ){
		
		Map<String, Object> response = new HashMap<>();
		
		Cliente cliente = clienteService.findById(id) ;
		
		if ( !archivo.isEmpty() ) {		
			
			String nombreArchivo = null;
			try {
				nombreArchivo = uploadService.copiar(archivo);
			} catch (IOException e) {
				response.put( "mensaje", "Error al subir la imagen del cliente " );
				response.put("error", e.getMessage().concat(": ").concat( e.getCause().getMessage() ) );
				return new ResponseEntity<Map<String, Object>> (response, HttpStatus.INTERNAL_SERVER_ERROR);
			}
			
			String nombreFotoAnterior = cliente.getFoto();
			
			uploadService.eliminar(nombreFotoAnterior);
			
			
			cliente.setFoto(nombreArchivo);
			clienteService.save(cliente);
			
			response.put("cliente", cliente);
			response.put("mensaje", "Has subido correctamente la imagen " + nombreArchivo );
			
		}
		
		return new ResponseEntity<Map<String, Object>> (response , HttpStatus.CREATED);
	}
	
	
	@GetMapping("/uploads/img/{nombreFoto:.+}")
	public ResponseEntity<Resource> verFoto ( @PathVariable String nombreFoto ){
		
		Resource recurso = null;
		
		try {
			recurso = uploadService.cargar(nombreFoto);
		} catch (MalformedURLException e) {
			e.printStackTrace();
		}
		
		HttpHeaders cabecera = new HttpHeaders();
		cabecera.add(HttpHeaders.CONTENT_DISPOSITION , "attachment; filename=\"" + recurso.getFilename() + "\"" );
		
		return new ResponseEntity<Resource>( recurso, cabecera, HttpStatus.OK );
	}
	
	
/*
	@PostMapping("/clientes")
	@ResponseStatus(HttpStatus.CREATED)
	public Cliente create( @RequestBody Cliente cliente) {
		return clienteService.save(cliente);
	}
*/
	@PostMapping("/clientes")
	public ResponseEntity<?> create( @Valid @RequestBody Cliente cliente, BindingResult result ) {
		
		Cliente clienteNew = null;
		Map<String, Object> response = new HashMap<>();
		
		if (result.hasErrors()) {
/*
			List<String> errors = new ArrayList<>();
			for ( FieldError err: result.getFieldErrors() ) {
				errors.add("El campo '" + err.getField() + "' " + err.getDefaultMessage());
			}
*/
			List <String> errors = result.getFieldErrors()
					.stream()
					.map(err -> "El campo '" + err.getField() + "' " + err.getDefaultMessage() )
					.collect(Collectors.toList());
			
			response.put("errors", errors);
			return new ResponseEntity<Map<String, Object>> ( response, HttpStatus.BAD_REQUEST );
		}		
		
		try {
			clienteNew = clienteService.save(cliente);
		} catch (DataAccessException e) {
			response.put("mensaje","Error al insertar en la Base de Datos");
			response.put("error", e.getMessage().concat(": ").concat(e.getMostSpecificCause().getMessage())  );
			return new ResponseEntity<Map<String, Object>>( response, HttpStatus.INTERNAL_SERVER_ERROR );
		}
		
		response.put("mensaje", "El cliente ha sido creado con exito");
		response.put("cliente", clienteNew);
		return new ResponseEntity<Map<String, Object>>(response, HttpStatus.CREATED);
	}	
	

/*
	@PutMapping("/clientes/{id}")
	@ResponseStatus(HttpStatus.CREATED)
	public Cliente update ( @RequestBody Cliente cliente, @PathVariable Long id ) {
		Cliente clienteActual = clienteService.findById(id);
		
		clienteActual.setNombre(cliente.getNombre());
		clienteActual.setApellido(cliente.getApellido());
		clienteActual.setEmail(cliente.getEmail());
		
		return clienteService.save(clienteActual);
		
	}
*/
	@PutMapping("/clientes/{id}")
	public ResponseEntity<?> update ( @Valid @RequestBody Cliente cliente, BindingResult result , @PathVariable Long id ) {
		
		Cliente clienteActual = clienteService.findById(id);
		Cliente clienteUpdated = null;
		
		Map<String, Object> response = new HashMap<>();
		
		
		if (result.hasErrors()) {
/*
			List<String> errors = new ArrayList<>();
			for ( FieldError err: result.getFieldErrors() ) {
				errors.add("El campo '" + err.getField() + "' " + err.getDefaultMessage());
			}
*/
			List <String> errors = result.getFieldErrors()
					.stream()
					.map(err -> "El campo '" + err.getField() + "' " + err.getDefaultMessage() )
					.collect(Collectors.toList());
			
			response.put("errors", errors);
			return new ResponseEntity<Map<String, Object>> ( response, HttpStatus.BAD_REQUEST );
		}			
		
		if ( clienteActual == null ) {
			response.put ( "mensaje", "Error: no se pudo actualizar el cliente con ID: ".concat(id.toString().concat( " no existe en la Base de Datos")) );
			return new ResponseEntity<Map<String, Object>>(response, HttpStatus.NOT_FOUND);
		}
		
		try {
			clienteActual.setNombre(cliente.getNombre());
			clienteActual.setApellido(cliente.getApellido());
			clienteActual.setEmail(cliente.getEmail());
			clienteActual.setCreateAt(cliente.getCreateAt());
			
			// Modificar regiones
			clienteActual.setRegion(cliente.getRegion());
			
			clienteUpdated = clienteService.save(clienteActual);
		} catch (DataAccessException e) {
			response.put("mensaje", "Error al actualizar la Base de Datos");
			response.put("error", e.getMessage().concat(": ").concat(e.getMostSpecificCause().getMessage() ) );
			return new ResponseEntity<Map<String, Object>>(response, HttpStatus.INTERNAL_SERVER_ERROR);
		}
		
		response.put("mensaje", "El cliente ha sido actualizado con exito");
		response.put("cliente", clienteUpdated);
		
		return new ResponseEntity<Map<String, Object>>(response, HttpStatus.CREATED);
		
	}	
	
/*
	@DeleteMapping("/clientes/{id}")
	@ResponseStatus(HttpStatus.NO_CONTENT)
	public void delete (@PathVariable Long id ) {
		clienteService.delete(id);
	}
*/
	@DeleteMapping("/clientes/{id}")
	public ResponseEntity<?> delete (@PathVariable Long id ) {
		
		Map<String, Object> response = new HashMap<>();
		
		try {

			Cliente cliente = clienteService.findById(id);
			String nombreFotoAnterior = cliente.getFoto();
			
			uploadService.eliminar(nombreFotoAnterior);
			
			clienteService.delete(id);
		} catch (DataAccessException e) {
			response.put("mensaje", "Error al eliminar de la base de datos");
			response.put("error", e.getMessage().concat(": ").concat( e.getMostSpecificCause().getMessage() )  );
			return new ResponseEntity<Map<String, Object>>( response, HttpStatus.INTERNAL_SERVER_ERROR );
		}
		
		response.put("mensaje", "El cliente fue eliminado con exito");
		return new ResponseEntity<Map<String, Object>>(response, HttpStatus.OK);
		
	}
	
	
	@GetMapping("/clientes/regiones")
	public List<Region> listarRegiones(){
		return clienteService.findAllRegiones();
	}
	
	
	
	
	
}












