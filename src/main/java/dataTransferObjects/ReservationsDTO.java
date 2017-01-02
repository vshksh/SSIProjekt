package dataTransferObjects;

import java.sql.Date;

public class ReservationsDTO
{
	int id;
	Date dataStart;
	Date dataKoniec;
	Date dataDokonania;
	Date dataZaplaty;
	int iloscOsob;
	int idOferty;
	int Stan;
	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
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
	public Date getDataDokonania() {
		return dataDokonania;
	}
	public void setDataDokonania(Date dataDokonania) {
		this.dataDokonania = dataDokonania;
	}
	public Date getDataZaplaty() {
		return dataZaplaty;
	}
	public void setDataZaplaty(Date dataZaplaty) {
		this.dataZaplaty = dataZaplaty;
	}
	public int getIloscOsob() {
		return iloscOsob;
	}
	public void setIloscOsob(int iloscOsob) {
		this.iloscOsob = iloscOsob;
	}
	public int getIdOferty() {
		return idOferty;
	}
	public void setIdOferty(int idOferty) {
		this.idOferty = idOferty;
	}
	public int getStan() {
		return Stan;
	}
	public void setStan(int stan) {
		Stan = stan;
	}
}
