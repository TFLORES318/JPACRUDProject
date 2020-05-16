package com.skilldistillery.venues.data;

import com.skilldistillery.venues.entities.Venue;

public interface VenueDAO {
	
	public Venue findById(int id);

}
