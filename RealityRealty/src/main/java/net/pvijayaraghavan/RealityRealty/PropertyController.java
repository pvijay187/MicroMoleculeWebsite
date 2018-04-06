package net.pvijayaraghavan.RealityRealty;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import net.pvijayaraghavan.RealityRealty.dao.PropertyDao;
import net.pvijayaraghavan.RealityRealty.model.Property;

@Controller
public class PropertyController {

	@Autowired
	PropertyDao propDao;

	@RequestMapping(path = "/", method = RequestMethod.GET)
	public String displayAllProperties(ModelMap modelHolder) {
		List<Property> properties = propDao.getAllProperties();
		modelHolder.put("properties", properties);

		return "Property/list";
	}

	@RequestMapping(path = "/Property/add", method = RequestMethod.GET)
	public String displayAddForm() {
		return "Property/add";
	}

	@RequestMapping(path = "/Property/add", method = RequestMethod.POST)
	public String saveProperty(@ModelAttribute Property newProp) {
		propDao.save(newProp);

		return "redirect:/";
	}

	@RequestMapping(path = "/Property/{id}/edit", method = RequestMethod.GET)
	public String showEditPage(@PathVariable Long id) {
		return "Property/list";
	}
}
