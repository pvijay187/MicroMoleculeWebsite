package com.techelevator.aa.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.techelevator.aa.model.aminoacid.AminoAcid;
import com.techelevator.aa.model.aminoacid.AminoAcidDao;

@Controller
public class AminoAcidController {

	@Autowired
	AminoAcidDao aminoAcidDao;

	@RequestMapping(path = "/", method = RequestMethod.GET)
	public String displayHomePage() {
		return "homePage";

	}
	
	@RequestMapping(path = "/aminoAcidHome", method = RequestMethod.GET)
	public String displayAminoAcidHome() {
		return "aminoAcidHome";

	}

	@RequestMapping(path = "/allAminoAcids", method = RequestMethod.GET)
	public String showAllAminoAcids(ModelMap modelMap) {
		modelMap.put("allAminoAcids", aminoAcidDao.getAllAminoAcids());

		return "allAminoAcids";
	}

	@RequestMapping(path = "/polarAminoAcids", method = RequestMethod.GET)
	public String showPolarAminoAcids(ModelMap modelMap) {
		modelMap.put("polarAminoAcids", aminoAcidDao.getPolarAminoAcids());

		return "polarAminoAcids";
	}

	@RequestMapping(path = "/nonPolarAminoAcids", method = RequestMethod.GET)
	public String showNonPolarAminoAcids(ModelMap modelMap) {
		modelMap.put("nonPolarAminoAcids", aminoAcidDao.getNonPolarAminoAcids());

		return "nonPolarAminoAcids";
	}

	@RequestMapping(path = "/acidicAminoAcids", method = RequestMethod.GET)
	public String showAcidicAminoAcids(ModelMap modelMap) {
		modelMap.put("acidicAminoAcids", aminoAcidDao.getAcidicAminoAcids());

		return "acidicAminoAcids";
	}

	@RequestMapping(path = "/basicAminoAcids", method = RequestMethod.GET)
	public String showBasicAminoAcids(ModelMap modelMap) {
		modelMap.put("basicAminoAcids", aminoAcidDao.getBasicAminoAcids());

		return "basicAminoAcids";
	}

	@RequestMapping(path = "/aminoAcidDetails")
	public String showAminoAcidDetail(@RequestParam String threeLetterAbv, ModelMap modelHolder) {
		for (AminoAcid a : aminoAcidDao.getAllAminoAcids()) {
			if (a.getThreeLetterAbv().equals(threeLetterAbv)) 
				modelHolder.put("aminoAcid", a);
			
			}
		
		return "aminoAcidDetails";
	}

}
