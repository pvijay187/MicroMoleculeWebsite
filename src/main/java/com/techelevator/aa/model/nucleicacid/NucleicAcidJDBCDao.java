package com.techelevator.aa.model.nucleicacid;

import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Component;

@Component
public class NucleicAcidJDBCDao implements NucleicAcidDao {

	private JdbcTemplate jdbcTemplate;

	@Autowired
	public NucleicAcidJDBCDao(DataSource dataSource) {
		this.jdbcTemplate = new JdbcTemplate(dataSource);
	}

	@Override
	public List<NucleicAcid> getAllNucleicAcids() {
		List<NucleicAcid> allNucleicAcids = new ArrayList<>();
		String sqlSelectAllNucleicAcids = "Select * FROM nucleicacids";
		SqlRowSet results = jdbcTemplate.queryForRowSet(sqlSelectAllNucleicAcids);
		while (results.next()) {
			NucleicAcid nA = new NucleicAcid();
			nA.setImageName(results.getString("image_name"));
			nA.setName(results.getString("name"));
			nA.setCategory(results.getString("category"));
			nA.setSugar(results.getString("sugar"));
			nA.setDescription(results.getString("description"));
			allNucleicAcids.add(nA);
		}
		return allNucleicAcids;
	}

}
