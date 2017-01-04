package dataTransferObjects;

import java.sql.Date;

public class OffersDTO
{
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
	public String getLink() {
		return link;
	}
	public void setLink(String link) {
		this.link = link;
	}
	public int getCena() {
		return cena;
	}
	public void setCena(int cena) {
		this.cena = cena;
	}
	public int getIdPokoju() {
		return idPokoju;
	}
	public void setIdPokoju(int idPokoju) {
		this.idPokoju = idPokoju;
	}
	int id;
	String nazwa;
	String link;
	int cena;
	int idPokoju;
	
}
