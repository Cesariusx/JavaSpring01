package com.ladisac.springboot.backend.apirest.models.services;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import com.ladisac.springboot.backend.apirest.models.entity.Cliente;
import com.ladisac.springboot.backend.apirest.models.entity.Region;

// Contrato del CRUD ClienteServiceImpl
public interface IClienteService {
	
	public List<Cliente> FindAll();
	
	public Page<Cliente> FindAll( Pageable pageable );
	
	public Cliente findById (Long Id);
	
	public Cliente save (Cliente cliente);
	
	public void delete( long Id );
	
	public List<Region> findAllRegiones();
	
	
}
