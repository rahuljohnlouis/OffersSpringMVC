package com.caveofprogramming.spring.web.controllers;

import java.security.Principal;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.caveofprogramming.spring.web.dao.FormValidationGroup;
import com.caveofprogramming.spring.web.dao.Offer;
import com.caveofprogramming.spring.web.dao.PersistanceValidationGroup;
import com.caveofprogramming.spring.web.service.OffersService;

@Controller
public class OffersController {

	private OffersService offerService;

	@Autowired
	public void setOfferService(OffersService offerService) {
		this.offerService = offerService;
	}

	@RequestMapping("/offers")
	public String showOffers(Model model) {
		List<Offer> offers = offerService.getCurrent();
		//offerService.throwTestException();
		model.addAttribute("offers", offers);

		return "offers";
	}
	
	@RequestMapping("/createoffer")
	public String createOffer(Model model, Principal principal) {
		Offer offer = null;
		if(principal != null)
		{
			String username = principal.getName();
			offer = offerService.getOffer(username);
		}
		
		if(offer == null)
		{
			offer = new Offer();
		}
		model.addAttribute("offer",offer);
		return "createoffer";
	}
	
	@RequestMapping(value="/docreate", method=RequestMethod.POST)
	public String doCreate(Model model, @Validated(value=FormValidationGroup.class) Offer offer, BindingResult result, Principal principal,@RequestParam(value="delete",required=false) String delete) {
		
		if(result.hasErrors())
		{
			System.out.println("Form does not validate");
			List<ObjectError> errors = result.getAllErrors();
			for(ObjectError error: errors)
			{
				System.out.println(error.getDefaultMessage());
			}
			return "createoffer";
		}
		
		if(delete == null)
		{
			System.out.println("Delete is null");
			String username = principal.getName();
			offer.getUser().setUsername(username);
			offerService.saveOrUpdate(offer);
			
			return "offercreated";
		}
		else
		{
			System.out.println("Delete is not null");
			offerService.delete(offer.getId());
			return "offerdeleted";
		}
		
	}
	
	@RequestMapping(value="/test", method=RequestMethod.GET)
	public String showTest(Model model,@RequestParam("id")String id) {
		System.out.println(id);
		
		return "home";
	}
	
}
