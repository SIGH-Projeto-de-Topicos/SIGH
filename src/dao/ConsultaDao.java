package dao;

import util.Conexao;
import model.Consulta;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class ConsultaDao {	
	private final String tabela = "consulta";
		
	public Consulta insert(String clinica, String data, String hora, String modalidade, int idPaciente, int idMedico){
		Conexao conn = null;
		
		try {
			conn = new Conexao();
			
			int id = conn.retornaIDMax("consulta");
			
			Consulta consulta = new Consulta();
			consulta.setId(id);
			consulta.setClinica(clinica);
			consulta.setData(data);
			consulta.setHora(hora);
			consulta.setModalidade(modalidade);
			consulta.setIdPaciente(idPaciente);
			consulta.setIdMedico(idMedico);
			
			String query = String.format(
					"INSERT INTO consulta (id, clinica, data, hora, modalidade, idpaciente, idmedico) VALUES (%d, \'%s\', \'%s\', \'%s\', \'%s\', %d, %d)",
						consulta.getId(),
						consulta.getClinica(),
						consulta.getData(),
						consulta.getHora(),
						consulta.getModalidade(),
						consulta.getIdPaciente(),
						consulta.getIdMedico()
			);
			
			conn.executeUpdate(query);
			conn.fecharConexao();
			
			return consulta;
			
		}catch(SQLException e) {
			System.out.print("error:" + e);
			return null;
		}
	}
	
	public Consulta get(int id){
		Conexao conn = null;
		
		try {
			conn = new Conexao();
			
			String query = String.format(
					"SELECT * FROM %s WHERE id=%d;",
						tabela,
						id
			);
			
			Consulta consulta = null;
			
			ResultSet rs = conn.executeQuery(query);
			
			if (rs.next()) {
				consulta = new Consulta();
				consulta.setId(rs.getInt("id"));
				consulta.setClinica(rs.getString("clinica"));
				consulta.setData(rs.getString("data"));
				consulta.setHora(rs.getString("hora"));
				consulta.setModalidade(rs.getString("modalidade"));
				consulta.setIdPaciente(rs.getInt("idpaciente"));
				consulta.setIdMedico(rs.getInt("idmedico"));
			}
			
			conn.fecharConexao();
			
			return consulta;
			
		}catch(SQLException e) {
			System.out.print("resultados nao encontrados");
			return null;	
		}
	}

	public ArrayList<Consulta> fromPaciente(int idPaciente) {
		Conexao conn = null;
		
		try {
			conn = new Conexao();
			
			ArrayList<Consulta> consultas = new ArrayList<Consulta>();
			Consulta consulta = null;
			
			String query = String.format(
					"SELECT * FROM %s WHERE idpaciente=\'%d\';",
						tabela,
						idPaciente
			);
			
			ResultSet rs = conn.executeQuery(query);
			
			while (rs.next()) {
				consulta = new Consulta();
				consulta.setId(rs.getInt("id"));
				consulta.setClinica(rs.getString("clinica"));
				consulta.setData(rs.getString("data"));
				consulta.setHora(rs.getString("hora"));
				consulta.setModalidade(rs.getString("modalidade"));
				consulta.setIdPaciente(rs.getInt("idpaciente"));
				consulta.setIdMedico(rs.getInt("idmedico"));
				
				consultas.add(consulta);
			}
			
			return consultas;
			
		} catch (SQLException e) {
			System.out.print("erro ao pegar as consultas");
			return new ArrayList<Consulta>();
		}
	}
	public ArrayList<Consulta> getConsultas(int idMedico) {
		Conexao conn = null;
		
		try {
			conn = new Conexao();
			
			ArrayList<Consulta> consultas = new ArrayList<Consulta>();
			Consulta consulta = null;
			
			String query = String.format(
					"SELECT * FROM %s WHERE idmedico=\'%d\';",
						tabela,
						idMedico
			);
			
			ResultSet rs = conn.executeQuery(query);
			
			while (rs.next()) {
				consulta = new Consulta();
				consulta.setId(rs.getInt("id"));
				consulta.setClinica(rs.getString("clinica"));
				consulta.setData(rs.getString("data"));
				consulta.setHora(rs.getString("hora"));
				consulta.setModalidade(rs.getString("modalidade"));
				consulta.setIdPaciente(rs.getInt("idpaciente"));
				consulta.setIdMedico(rs.getInt("idmedico"));
				
				consultas.add(consulta);
			}
			
			return consultas;
			
		} catch (SQLException e) {
			System.out.print("erro ao pegar as consultas");
			return new ArrayList<Consulta>();
		}
	}
	public void delete(int id) {
		try {
			Conexao conn = null;
			
			conn = new Conexao();
			
			String update = String.format(
					"DELETE FROM %s WHERE id=%d;",
						tabela,
						id
			);
			
			conn.executeUpdate(update);
			
		}catch(SQLException e){
			System.out.print("erro ao excluir consulta");
		}
	}
}
