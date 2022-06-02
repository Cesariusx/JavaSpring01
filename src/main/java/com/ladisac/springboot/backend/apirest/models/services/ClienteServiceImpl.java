package com.ladisac.springboot.backend.apirest.models.services;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.ladisac.springboot.backend.apirest.models.dao.IClienteDao;
import com.ladisac.springboot.backend.apirest.models.entity.Cliente;
import com.ladisac.springboot.backend.apirest.models.entity.Region;

@Service
public class ClienteServiceImpl implements IClienteService {

	@Autowired
	private IClienteDao clienteDao;
	
	@Override
	@Transactional ( readOnly = true )
	public List<Cliente> FindAll() {
		// Consultar todos lo clientes
		return (List<Cliente>) clienteDao.findAll();
	}

	@Override
	@Transactional ( readOnly = true )
	public Page<Cliente> FindAll(Pageable pageable) {
		return clienteDao.findAll(pageable);
	}
	
	
	
	@Override
	@Transactional ( readOnly = true )
	public Cliente findById(Long Id) {
		// Consultar cliente por ID  (Si no encuentra devuelve Null)
		return clienteDao.findById(Id).orElse(null);
	}

	@Override
	@Transactional
	public Cliente save(Cliente cliente) {
		// Guardar datos del cliente y retorna el cliente guardado
		return clienteDao.save(cliente);
	}

	@Override
	@Transactional
	public void delete(long Id) {
		// Eliminar el CLiente por ID sin devolver nada
		clienteDao.deleteById(Id);
	}

	@Override
	@Transactional ( readOnly = true )
	public List<Region> findAllRegiones() {
		return clienteDao.findAllRegiones();
	}


}
