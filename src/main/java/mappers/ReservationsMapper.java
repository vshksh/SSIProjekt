package mappers;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import dataTransferObjects.ReservationsDTO;

public class ReservationsMapper implements RowMapper<ReservationsDTO>
{
	public ReservationsDTO mapRow(ResultSet rs, int rowNum) throws SQLException
	{
		ReservationsDTO rezerwacja = new ReservationsDTO();
		rezerwacja.setId(rs.getInt("id"));
		rezerwacja.setDataStart(rs.getDate("data_start"));
		rezerwacja.setDataKoniec(rs.getDate("data_koniec"));
		rezerwacja.setDataDokonania(rs.getDate("data_dokonania"));
		rezerwacja.setDataZaplaty(rs.getDate("data_zaplaty"));
		rezerwacja.setIloscOsob(rs.getInt("ilosc_osob"));
		rezerwacja.setIdOferty(rs.getInt("id_oferty"));
		rezerwacja.setStan(rs.getInt("stan"));
		return rezerwacja;
	}

}
