package com.skilldistillery.venues.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.skilldistillery.venues.data.VenueDAO;
import com.skilldistillery.venues.entities.Venue;

@Controller
public class VenueController {

	@Autowired
	private VenueDAO dao;
	
	@RequestMapping(path="getVenue.do")
	public String findVenue(@RequestParam int vid, Model model) {
		Venue v = dao.findById(vid);
		model.addAttribute("venue", v);
		return "venueDetail";
	}
}
