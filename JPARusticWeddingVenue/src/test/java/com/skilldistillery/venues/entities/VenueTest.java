package com.skilldistillery.venues.entities;

import static org.junit.jupiter.api.Assertions.*;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

class VenueTest {
	
	private static EntityManagerFactory emf;
	private EntityManager em;
	private Venue venue;

	@BeforeAll
	static void setUpBeforeClass() throws Exception {
		emf = Persistence.createEntityManagerFactory("CORusticWeddingVenue");
	}

	@AfterAll
	static void tearDownAfterClass() throws Exception {
		emf.close();
	}

	@BeforeEach
	void setUp() throws Exception {
		em = emf.createEntityManager();
		venue = em.find(Venue.class, 1);
	}

	@AfterEach
	void tearDown() throws Exception {
		em.close();
		venue = null;
	}

	@Test
	void test() {
		assertNotNull(venue);
		assertEquals("Evergreen Red Barn", venue.getName());
	}

}
