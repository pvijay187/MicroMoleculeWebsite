package net.pvijayaraghavan.RealityRealty.dao;

import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Component;

import net.pvijayaraghavan.RealityRealty.model.Property;

@Component
public class PropertyJdbcDao implements PropertyDao {

	private JdbcTemplate jdbcTemplate;

	@Autowired
	public PropertyJdbcDao(DataSource dataSource) {
		jdbcTemplate = new JdbcTemplate(dataSource);
	}

	@Override
	public Property save(Property newProperty) {
		String insertSql = "INSERT INTO properties (address, city, state, zip, price, realtor_name, realtor_phone) "
				+ "VALUES (?,?,?,?,?,?,?) RETURNING id";

		long newId = jdbcTemplate.queryForObject(insertSql, Long.class, newProperty.getAddress(), newProperty.getCity(),
				newProperty.getState(), newProperty.getZip(), newProperty.getPrice(), newProperty.getRealtorName(),
				newProperty.getRealtorPhone());
		newProperty.setId(newId);
		return newProperty;
	}

	@Override
	public List<Property> getAllProperties() {
		String getAllPropsSql = "SELECT * FROM properties";
		List<Property> properties = new ArrayList<>();
		SqlRowSet results = jdbcTemplate.queryForRowSet(getAllPropsSql);
		while (results.next()) {
			Property prop = mapRowToProperty(results);
			properties.add(prop);

		}
		return properties;
	}

	private Property mapRowToProperty(SqlRowSet results) {
		Property prop = new Property();
		prop.setId(results.getLong("id"));
		prop.setAddress(results.getString("address"));
		prop.setCity(results.getString("city"));
		prop.setState(results.getString("state"));
		prop.setZip(results.getString("zip"));
		prop.setPrice(results.getInt("price"));
		prop.setRealtorName(results.getString("realtor_name"));
		prop.setRealtorPhone(results.getString("realtor_phone"));
		
		return prop;
	}

}
