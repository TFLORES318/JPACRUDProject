package com.skilldistillery.venues.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Venue {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String name;
	private String address;
	@Column(name="phone_number")
	private String phoneNumber;
	private int capacity;
	@Column(name="full_service")
	private boolean fullService;
	private int cost;
	@Column(name="seasonal_availability")
	private String seasonalAvailability;
	@Column(name="handicap_accessible")
	private boolean handicapAccessible;
	@Column(name="num_of_bathrooms")
	private int numOfBathrooms;

	public Venue() {}


	public Venue(int id, String name, String address, String phoneNumber, int capacity, boolean fullService, int cost,
			String seasonalAvailability, boolean handicapAccessible, int numOfBathrooms) {
		this.id = id;
		this.name = name;
		this.address = address;
		this.phoneNumber = phoneNumber;
		this.capacity = capacity;
		this.fullService = fullService;
		this.cost = cost;
		this.seasonalAvailability = seasonalAvailability;
		this.handicapAccessible = handicapAccessible;
		this.numOfBathrooms = numOfBathrooms;
	}


	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	

	public String getAddress() {
		return address;
	}


	public void setAddress(String address) {
		this.address = address;
	}


	public String getPhoneNumber() {
		return phoneNumber;
	}


	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}


	public int getCapacity() {
		return capacity;
	}


	public void setCapacity(int capacity) {
		this.capacity = capacity;
	}


	public boolean isFullService() {
		return fullService;
	}


	public void setFullService(boolean fullService) {
		this.fullService = fullService;
	}


	public int getCost() {
		return cost;
	}


	public void setCost(int cost) {
		this.cost = cost;
	}


	public String getSeasonalAvailability() {
		return seasonalAvailability;
	}


	public void setSeasonalAvailability(String seasonalAvailability) {
		this.seasonalAvailability = seasonalAvailability;
	}


	public boolean isHandicapAccessible() {
		return handicapAccessible;
	}


	public void setHandicapAccessible(boolean handicapAccessible) {
		this.handicapAccessible = handicapAccessible;
	}


	public int getNumOfBathrooms() {
		return numOfBathrooms;
	}


	public void setNumOfBathrooms(int numOfBathrooms) {
		this.numOfBathrooms = numOfBathrooms;
	}


	@Override
	public String toString() {
		return "Venue [id=" + id + ", name=" + name + "]";
	}

}
