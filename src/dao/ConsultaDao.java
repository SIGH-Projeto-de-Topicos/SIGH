package dao;

import util.Conexao;
import model.Consulta;

import java.sql.ResultSet;
import java.sql.SQLException;

public class ConsultaDao {
	Consulta c = null;
	
	public boolean insert(Consulta c){
		try {
			Conexao con = null;
			con = new Conexao();
			c.setID_consulta(con.retornaIDMax("paciente"));
			con.executeUpdate("INSERT INTO consultas VALUES(" + c.getID_consulta()  + "," + c.getModalidade() + "," + c.getEspecialidade()+"," + c.getClinica() + "," + c.getData() + "," + c.getID_paciente() + ")");
			con.fecharConexao();
			return true;
		}catch(SQLException e) {
			System.out.print("error:" + e);
			return false;
		}
	}
	
	public ResultSet Query(String ID_paciente){
		Conexao con = null;
		try {
			con = new Conexao();
			ResultSet Rset = con.executeQuery("SELECT * FROM consulta WHERE Id_paciente =" + ID_paciente + ";");
			con.fecharConexao();
			return Rset;
		}catch(SQLException e) {
			System.out.print("resultados nao encontrados");
			return null;	
		}
	}
	public void delete(Consulta c) {
		try {
			Conexao con = null;
			con = new Conexao();
			con.executeUpdate("DELETE FROM paciente WHERE Id_paciente =" + c.getID_consulta());
		}catch(SQLException e){
			System.out.print("erro ao excluir consulta");
		}
	
	public void update(Consulta c) {
		try {
			Conexao con = null;
			con = new Conexao();
			con.executeUpdate("UPDATE paciente SET local =" +"data"+ "=" + c.getData() + "WHERE Id_consulta=" + c.getID_consulta());
		}catch(SQLException e) {
			
		}
	}
}
