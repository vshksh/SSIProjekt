package mappers;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import dataTransferObjects.OffersDTO;

public class OffersMapper implements RowMapper<OffersDTO>
{
	public OffersDTO mapRow(ResultSet rs, int rowNum) throws SQLException
	{
		OffersDTO oferta = new OffersDTO();
		oferta.setId(rs.getInt("id"));
		oferta.setNazwa(rs.getString("nazwa"));
		oferta.setOpis(rs.getString("opis"));
		oferta.setCena(rs.getInt("cena"));
		oferta.setDataStart(rs.getDate("data_start"));
		oferta.setDataKoniec(rs.getDate("data_koniec"));
		oferta.setIdPokoju(rs.getInt("id_pokoju"));
		return oferta;
	}

}
