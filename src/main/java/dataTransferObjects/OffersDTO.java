package dataTransferObjects;

import java.sql.Date;

public class OffersDTO
{
	int id;
	String nazwa;
	String opis;
	int cena;
	Date dataStart;
	Date dataKoniec;
	int idPokoju;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getNazwa() {
		return nazwa;
	}
	public void setNazwa(String nazwa) {
		this.nazwa = nazwa;
	}
	public String getOpis() {
		return opis;
	}
	public void setOpis(String opis) {
		this.opis = opis;
	}
	public int getCena() {
		return cena;
	}
	public void setCena(int cena) {
		this.cena = cena;
	}
	public Date getDataStart() {
		return dataStart;
	}
	public void setDataStart(Date dataStart) {
		this.dataStart = dataStart;
	}
	public Date getDataKoniec() {
		return dataKoniec;
	}
	public void setDataKoniec(Date dataKoniec) {
		this.dataKoniec = dataKoniec;
	}
	public int getIdPokoju() {
		return idPokoju;
	}
	public void setIdPokoju(int idPokoju) {
		this.idPokoju = idPokoju;
	}
	
}
