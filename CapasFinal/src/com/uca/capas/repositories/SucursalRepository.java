package com.uca.capas.repositories;

import java.util.List;
import java.util.Optional;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.uca.capas.domain.Sucursal;

public interface SucursalRepository extends CrudRepository<Sucursal, Integer>{

	Optional<Sucursal> findById(Integer codigo);

	void deleteById(Integer codigo);
	
	public List<Sucursal> findAll();
	
}
