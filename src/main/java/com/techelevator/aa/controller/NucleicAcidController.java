package com.techelevator.aa.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.techelevator.aa.model.nucleicacid.NucleicAcidDao;

@Controller
public class NucleicAcidController {

	@Autowired
	NucleicAcidDao nucleicAcidDao;

	@RequestMapping(path = "/nucleicAcidHome", method = RequestMethod.GET)
	public String displayNucleicAcidHome() {
		return "nucleicAcidHome";

	}

	@RequestMapping(path = "/nucleotides", method = RequestMethod.GET)
	public String showAllNucleicAcids(ModelMap modelMap) {
		modelMap.put("nucleotides", nucleicAcidDao.getAllNucleicAcids());

		return "nucleotides";
	}


	@RequestMapping(path = "/dnaRna", method = RequestMethod.GET)
	public String showDnaRnas() {
		return "dnaRna";
	}


}
