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
			c.setID_consulta(con.retornaIDMax("consulta"));
			con.executeUpdate("INSERT INTO consultas(id,clinica,data,hora,especialidade,modalidade,paciente_id) VALUES("+c.getID_consulta()+",\'"+c.getClinica()+"\',"+ c.getData()+ "," +c.getHora()+ ",\'" +c.getEspecialidade()+ "\',\'" +c.getModalidade()+"\',"+ c.getID_paciente()+")");
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
			ResultSet Rset = con.executeQuery("SELECT * FROM consultas WHERE id =" + ID_paciente + ";");
			con.fecharConexao();
			return Rset;
		}catch(SQLException e) {
			System.out.print("resultados nao encontrados");
			return null;	
		}
	}
	
	public ResultSet query(int id) throws SQLException{
		Conexao con = new Conexao();
		ResultSet rs = con.executeQuery("SELECT id FROM consultas WHERE id=" + id + ";");
		return rs;
	}	
	
	public void delete(Consulta c) {
		try {
			Conexao con = null;
			con = new Conexao();
			con.executeUpdate("DELETE FROM paciente WHERE Id_paciente =" + c.getID_consulta() + ";");
		}catch(SQLException e){
			System.out.print("erro ao excluir consulta");
		}
	}
	
	public void update(Consulta c) {
		try {
			Conexao con = null;
			con = new Conexao();
			con.executeUpdate("UPDATE paciente SET clinica =\'"+ c.getClinica() +"\' data"+ "=" + c.getData() + "WHERE Id_consulta=" + c.getID_consulta());
		}catch(SQLException e) {
			
		}
	}
}
