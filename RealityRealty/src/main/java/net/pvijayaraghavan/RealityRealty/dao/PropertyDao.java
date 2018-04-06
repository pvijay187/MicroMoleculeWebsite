package net.pvijayaraghavan.RealityRealty.dao;

import java.util.List;

import net.pvijayaraghavan.RealityRealty.model.Property;

public interface PropertyDao {

	
	Property save(Property newProperty);

	List<Property> getAllProperties();
	
	
}
