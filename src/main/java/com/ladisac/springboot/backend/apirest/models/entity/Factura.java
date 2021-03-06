package com.ladisac.springboot.backend.apirest.models.entity;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.PrePersist;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;


@Entity
@Table(name = "facturas")
public class Factura implements Serializable {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	private String descripcion;
	private String observacion;
	@Column(name="create_at")
	@Temporal(TemporalType.DATE)
	private Date createAt;
	
	@ManyToOne(fetch = FetchType.LAZY) /**/
	private Cliente cliente;

	@OneToMany( fetch = FetchType.LAZY, cascade = CascadeType.ALL ) /*Una factura muchos detalles*/
	@JoinColumn(name="factura_id")
	private List<ItemFactura> items;
	
	
	public Factura() {
		items = new ArrayList<>();
	}



	@PrePersist  /*Para guardar datos por defecto, este campo no forma parte del form*/
	public void prePersist() {
		this.createAt = new Date();
	}
	
	
	
	/*Generer setter and Getter:  Click derecho: Source: get set*/
	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getDescripcion() {
		return descripcion;
	}

	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}

	public String getObservacion() {
		return observacion;
	}

	public void setObservacion(String observacion) {
		this.observacion = observacion;
	}

	public Date getCreateAt() {
		return createAt;
	}

	public void setCreateAt(Date createAt) {
		this.createAt = createAt;
	}

	public Cliente getCliente() {
		return cliente;
	}

	public void setCliente(Cliente cliente) {
		this.cliente = cliente;
	}
	
	
	
	
	public List<ItemFactura> getItems() {
		return items;
	}

	public void setItems(List<ItemFactura> items) {
		this.items = items;
	}


	public Double getTotal() {
		Double total = 0.00;
		for ( ItemFactura item: items ) {
			total += item.getImporte();
		}
		return total;
	}
	
	
	


	/* crear Default serial */
	private static final long serialVersionUID = 1L;	
	
}
