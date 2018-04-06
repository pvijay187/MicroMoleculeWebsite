package com.techelevator.aa.model.aminoacid;

import java.util.List;

public interface AminoAcidDao {
	public List<AminoAcid> getAllAminoAcids();
	
	public List<AminoAcid>getPolarAminoAcids();
	
	public List<AminoAcid>getNonPolarAminoAcids();
	
	public List<AminoAcid>getAcidicAminoAcids();
	
	public List<AminoAcid>getBasicAminoAcids();

}
