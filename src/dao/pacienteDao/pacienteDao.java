package dao.pacienteDao;

import util.Conexao;
import java.sql.ResultSet;
import java.sql.SQLException;
import model.paciente.Paciente;

public class pacienteDao{
	Paciente p = null;
	public boolean insert(){
		Conexao con = null;
		try {
			con = new Conexao();
			con.executeUpdate("INSERT INTO paciente VALUES("+ p.getID_paciente()+","+ p.getNome() + "," + p.getEmail() +","+ p.getSenha()+ "," + p.getDatNasc() + ","+ p.getN_tel() + ");");
			con.fecharConexao();
			return true;
		}catch(SQLException e) {
			System.out.print("erro ao inserir dados na tabela");
			return false;
		}
	}
	
	public void update() {
		Conexao con = null;
		try {
			con = new Conexao();
			con.executeUpdate("UPDATE paciente SET email =" + p.getEmail() + "," + "N_Tel =" + p.getN_tel() + "\n" + "WHERE" +"Id_paciente"+ "=" + p.getID_paciente());
			con.fecharConexao();
		}catch(SQLException e) {
			System.out.print("erro ao atualizar dados na tabela");
		}
	}
	
	public void delete() {
		Conexao con = null;
		try {
			con = new Conexao();
			con.executeUpdate("DELETE FROM paciente WHERE Id_paciente =" + p.getID_paciente());
		}catch(SQLException e){
			System.out.print("erro ao excluir usuário");
		}
	}
}