package com.skilldistillery.venues.data;

import java.util.List;

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

	
	public Venue createVenue(Venue venue) {
		em.persist(venue);
		em.flush();
		em.close();
		return venue;
	}

	
	@Override
	public Venue findById(int id) {
		return em.find(Venue.class, id);
	}
	
	public Venue findByVenueNameKeyword(String keyword) {

		String jpql = "SELECT v FROM Venue v WHERE v.name = :namey";
		Venue venue = em.createQuery(jpql, Venue.class).setParameter("namey", keyword).getSingleResult();	
		return venue;
	}
	
	
	public List<Venue> findAll() {
		String jpql = "SELECT v FROM Venue v";  
		List<Venue> venues; 
		venues = em.createQuery(jpql, Venue.class).getResultList();
		return venues;
	}
	
	public Venue updateVenue(Venue venue) {
		
		Venue updatedVenue = em.find(Venue.class, venue.getId());

		updatedVenue.setName(venue.getName());
		updatedVenue.setAddress(venue.getAddress());
		updatedVenue.setPhoneNumber(venue.getPhoneNumber());
		updatedVenue.setCapacity(venue.getCapacity());
		updatedVenue.setFullService(venue.isFullService());
		updatedVenue.setCost(venue.getCost());
		updatedVenue.setSeasonalAvailability(venue.getSeasonalAvailability());
		updatedVenue.setHandicapAccessible(venue.isHandicapAccessible());
		updatedVenue.setNumOfBathrooms(venue.getNumOfBathrooms());
		
		em.persist(updatedVenue);
		em.flush();
		em.close();
		return updatedVenue;
		
	}
	
	
	public boolean destroy(int id) {
		
		Venue venue = em.find(Venue.class, id);
		
		em.remove(venue);
		
		boolean stillContains = em.contains(venue);
		
		em.flush();
		em.close();
		return !stillContains;
	}
}
