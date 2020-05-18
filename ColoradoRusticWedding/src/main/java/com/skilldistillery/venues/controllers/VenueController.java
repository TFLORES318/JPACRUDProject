package com.skilldistillery.venues.controllers;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.skilldistillery.venues.data.VenueDAO;
import com.skilldistillery.venues.entities.Venue;

@Controller
public class VenueController {

	@Autowired
	private VenueDAO dao;
	
	@RequestMapping(path= {"/", "home.do"})
	public ModelAndView index() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("index");
		return mv;
	}

	@RequestMapping(path = "getVenue.do")
	public String findVenue(@RequestParam int vid, Model model) {
		Venue v = dao.findById(vid);
		model.addAttribute("venue", v);
		return "venueDetail";
	}
	
	@RequestMapping(path= "listAllVenues.do")
	public String listVenues(Model model) {
		List<Venue> venues = dao.findAll();
		model.addAttribute("venues", venues);
	  return "allVenuesInDatabase"; 
	}
	
	@RequestMapping(path = "getVenueByName.do")
	public String findVenueByName(@RequestParam String venueName, Model model) {
		Venue v = dao.findByVenueNameKeyword(venueName);
		model.addAttribute("venue", v);
		return "venueDetail";
	}

	@RequestMapping(path = "insertAVenue.do", method = RequestMethod.POST)
	public ModelAndView newVenue(Venue venue) {
		ModelAndView mv = new ModelAndView();
		Venue createdVenue = dao.createVenue(venue);
		mv.addObject("venue", createdVenue);
		mv.setViewName("successfullyAddedVenue");
		return mv;
	}

	@RequestMapping(path = "addVenue.do", method = RequestMethod.POST)
	public ModelAndView addVenueOption() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("createNewVenue");
		return mv;

	}

	@RequestMapping(path = "venueEditor.do", params = "id", method = RequestMethod.POST)
	public ModelAndView editPage(int id) {
		ModelAndView mv = new ModelAndView();
		Venue venue;
		venue = dao.findById(id);
		mv.addObject(venue);
		mv.setViewName("changeVenueInfo");
		return mv;
	}

	@RequestMapping(path = "updateVenueInformation.do", method = RequestMethod.POST)
	public ModelAndView changeVenueInfo(Venue venue) {
		ModelAndView mv = new ModelAndView();
		dao.updateVenue(venue);
		mv.addObject("venue", venue);
		mv.setViewName("index");
		return mv;

	}
	
	@RequestMapping(path = "removeVenue.do", method = RequestMethod.POST)
	public ModelAndView removeVenue(int id) {
		ModelAndView mv = new ModelAndView();
		boolean deleted = dao.destroy(id);
		if (deleted == true) {
			mv.setViewName("index");			
		}
		return mv;

	}

}
