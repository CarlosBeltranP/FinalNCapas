package com.uca.capas.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.uca.capas.domain.Sucursal;
import com.uca.capas.repositories.SucursalRepository;

@Service
public class SucursalService {
	@Autowired
	private SucursalRepository repo;
	
	public List<Sucursal> listAll() {
		return (List<Sucursal>) repo.findAll();
	}
	
	public void save(Sucursal sucursal) {
		repo.save(sucursal);
	}
	
	public Sucursal get(Integer codigo) {
		Optional<Sucursal> result = repo.findById(codigo);
		return result.get();
	}
	
	public void delete(Integer codigo) {
	repo.deleteById(codigo);
	}
	
	
}