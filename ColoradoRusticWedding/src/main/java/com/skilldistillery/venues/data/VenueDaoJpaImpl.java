package com.skilldistillery.venues.data;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.venues.entities.Venue;

@Service
@Transactional
public class VenueDaoJpaImpl implements VenueDAO {
	
	@PersistenceContext
	private EntityManager em;

	@Override
	public Venue findById(int id) {
		return em.find(Venue.class, id);
	}

}
