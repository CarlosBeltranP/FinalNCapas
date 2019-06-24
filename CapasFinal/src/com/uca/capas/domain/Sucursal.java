package com.uca.capas.domain;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.SequenceGenerator;

@Entity 
public class Sucursal {
	@Id
	private Integer codigo;
	
	private String nombre;
	private String ubicacion;
	private Integer mesas;
	private String gerente;
	private String horario_a;
	private String horario_c;
	

	public Sucursal() {
		super();
	}
	
	public Integer getCodigo() {
		return codigo;
	}
	public void setCodigo(Integer codigo) {
		this.codigo = codigo;
	}
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	public String getUbicacion() {
		return ubicacion;
	}
	public void setUbicacion(String ubicacion) {
		this.ubicacion = ubicacion;
	}
	
	public Integer getMesas() {
		return mesas;
	}
	public void setMesas(Integer mesas) {
		this.mesas = mesas;
	}
	public String getGerente() {
		return gerente;
	}
	public void setGerente(String gerente) {
		this.gerente = gerente;
	}
	
	public String getHorario_a() {
		return horario_a;
	}

	public void setHorario_a(String horario_a) {
		this.horario_a = horario_a;
	}

	public String getHorario_c() {
		return horario_c;
	}

	public void setHorario_c(String horario_c) {
		this.horario_c = horario_c;
	}
	
}