package dao;

import util.Conexao;
import model.Consulta;

import java.sql.ResultSet;
import java.sql.SQLException;

public class ConsultaDao {
	public boolean insert(Consulta c){
		try {
			Conexao con = null;
			con = new Conexao();
			con.executeUpdate("INSERT INTO consultas VALUES("+ c.getLocal() + "," + c.getData() + "))";
			
			con.fecharConexao();
			return true;
		}catch(SQLException e) {
			System.out.print("error:" + e);
			return false;
		}
	}
	
	public ResultSet Query(){
		Conexao con = null;
		try {
			con = new Conexao();
			ResultSet Rset = con.executeQuery("SELECT * FROM consulta WHERE Id_paciente =" + c.getID_paciente());
			con.fecharConexao();
			return Rset;
		}catch(SQLException e) {
			System.out.print("resultados nao encontrados");
			return null;	
		}
	}
	public void delete() {
		Conexao con = null;
			try {
				con = new Conexao();
				con.executeUpdate("DELETE FROM paciente WHERE Id_paciente =" + c.getID_paciente());
			}catch(SQLException e){
				System.out.print("erro ao excluir consulta");
			}
		}
	}
	
	public void update(Consulta c) {
		try {
			Conexao con = null;
			con = new Conexao();
			con.executeUpdate("UPDATE paciente SET local =" + c.getLocal() +"data"+ "=" + c.getData() + "WHERE Id_consulta=" + c.getID_consulta());
		}catch(SQLException e) {
			
		}
	}
}
