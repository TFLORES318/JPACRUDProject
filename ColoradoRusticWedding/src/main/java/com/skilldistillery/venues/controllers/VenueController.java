package com.skilldistillery.venues.controllers;


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

	@RequestMapping(path = "getVenue.do")
	public String findVenue(@RequestParam int vid, Model model) {
		Venue v = dao.findById(vid);
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

	@RequestMapping(path = "updateVenue.do", method = RequestMethod.POST)
	public ModelAndView changeVenueInfo() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("changeVenueInfo");
		return mv;

	}

	@RequestMapping(path = "venueEditor.do", params = "id")
	public ModelAndView editPage(int id, Venue venue) {
		ModelAndView mv = new ModelAndView();
			Venue updatedVenue = dao.updateVenue(id, venue);
			mv.addObject(updatedVenue);
		mv.setViewName("successfullyAddedVenue");
		return mv;
	}

}
