package com.techelevator.aa.model.aminoacid;

import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Component;

@Component
public class AminoAcidJDBCDao implements AminoAcidDao {

	private JdbcTemplate jdbcTemplate;

	@Autowired
	public AminoAcidJDBCDao(DataSource dataSource) {
		this.jdbcTemplate = new JdbcTemplate(dataSource);
	}

	@Override
	public List<AminoAcid> getAllAminoAcids() {
		List<AminoAcid> allAminoAcids = new ArrayList<>();
		String sqlSelectAllAminoAcids = "SELECT * FROM aminoacids";
		SqlRowSet results = jdbcTemplate.queryForRowSet(sqlSelectAllAminoAcids);
		while (results.next()) {
			AminoAcid aA = new AminoAcid();
			aA.setImageName(results.getString("image_name"));
			aA.setName(results.getString("name"));
			aA.setThreeLetterAbv(results.getString("three_letter_abv"));
			aA.setOneLetterAbv(results.getString("one_letter_abv"));
			aA.setCategory(results.getString("category"));
			aA.setrGroup(results.getString("r_group"));
			aA.setIsoelectricPoint(results.getDouble("isoelectric_point"));
			aA.setDescription(results.getString("description"));
			allAminoAcids.add(aA);
		}

		return allAminoAcids;
	}

	@Override
	public List<AminoAcid> getPolarAminoAcids() {
		List<AminoAcid> polarAminoAcids = new ArrayList<>();
		String sqlSelectPolarAminoAcids = "Select * From aminoacids WHERE category = 'Polar' ";
		SqlRowSet results = jdbcTemplate.queryForRowSet(sqlSelectPolarAminoAcids);
		while (results.next()) {
			AminoAcid aA = new AminoAcid();
			aA.setImageName(results.getString("image_name"));
			aA.setName(results.getString("name"));
			aA.setThreeLetterAbv(results.getString("three_letter_abv"));
			aA.setOneLetterAbv(results.getString("one_letter_abv"));
			aA.setCategory(results.getString("category"));
			aA.setrGroup(results.getString("r_group"));
			aA.setIsoelectricPoint(results.getDouble("isoelectric_point"));
			aA.setDescription(results.getString("description"));
			polarAminoAcids.add(aA);
		}
		return polarAminoAcids;
	}

	@Override
	public List<AminoAcid> getNonPolarAminoAcids() {
		List<AminoAcid> nonPolarAminoAcids = new ArrayList<>();
		String sqlSelectNonPolarAminoAcids = "Select * From aminoacids WHERE category = 'Nonpolar' ";
		SqlRowSet results = jdbcTemplate.queryForRowSet(sqlSelectNonPolarAminoAcids);
		while (results.next()) {
			AminoAcid aA = new AminoAcid();
			aA.setImageName(results.getString("image_name"));
			aA.setName(results.getString("name"));
			aA.setThreeLetterAbv(results.getString("three_letter_abv"));
			aA.setOneLetterAbv(results.getString("one_letter_abv"));
			aA.setCategory(results.getString("category"));
			aA.setrGroup(results.getString("r_group"));
			aA.setIsoelectricPoint(results.getDouble("isoelectric_point"));
			aA.setDescription(results.getString("description"));
			nonPolarAminoAcids.add(aA);
		}
		return nonPolarAminoAcids;
	}

	@Override
	public List<AminoAcid> getAcidicAminoAcids() {
		List<AminoAcid> acidicAminoAcids = new ArrayList<>();
		String sqlSelectAcidicAminoAcids = "Select * From aminoacids WHERE category = 'Acidic' ";
		SqlRowSet results = jdbcTemplate.queryForRowSet(sqlSelectAcidicAminoAcids);
		while (results.next()) {
			AminoAcid aA = new AminoAcid();
			aA.setImageName(results.getString("image_name"));
			aA.setName(results.getString("name"));
			aA.setThreeLetterAbv(results.getString("three_letter_abv"));
			aA.setOneLetterAbv(results.getString("one_letter_abv"));
			aA.setCategory(results.getString("category"));
			aA.setrGroup(results.getString("r_group"));
			aA.setIsoelectricPoint(results.getDouble("isoelectric_point"));
			aA.setDescription(results.getString("description"));
			acidicAminoAcids.add(aA);
		}
		return acidicAminoAcids;
	}

	@Override
	public List<AminoAcid> getBasicAminoAcids() {
		List<AminoAcid> basicAminoAcids = new ArrayList<>();
		String sqlSelectBasicAminoAcids = "Select * From aminoacids WHERE category = 'Basic' ";
		SqlRowSet results = jdbcTemplate.queryForRowSet(sqlSelectBasicAminoAcids);
		while (results.next()) {
			AminoAcid aA = new AminoAcid();
			aA.setImageName(results.getString("image_name"));
			aA.setName(results.getString("name"));
			aA.setThreeLetterAbv(results.getString("three_letter_abv"));
			aA.setOneLetterAbv(results.getString("one_letter_abv"));
			aA.setCategory(results.getString("category"));
			aA.setrGroup(results.getString("r_group"));
			aA.setIsoelectricPoint(results.getDouble("isoelectric_point"));
			aA.setDescription(results.getString("description"));
			basicAminoAcids.add(aA);
		}
		// TODO Auto-generated method stub
		return basicAminoAcids;
	}

}
