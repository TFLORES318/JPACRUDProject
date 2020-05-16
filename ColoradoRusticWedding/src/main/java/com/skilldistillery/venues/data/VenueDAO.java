package com.skilldistillery.venues.data;

import com.skilldistillery.venues.entities.Venue;

public interface VenueDAO {
	
	public Venue findById(int id);
	public Venue createVenue(Venue venue);
	public Venue updateVenue(Venue venue);
	public boolean destroy(int id);

}
