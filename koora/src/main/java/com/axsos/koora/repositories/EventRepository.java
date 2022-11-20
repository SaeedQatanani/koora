package com.axsos.koora.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.axsos.koora.models.Event;


@Repository
public interface EventRepository extends CrudRepository<Event, Long>{
	List<Event> findAll();

}
