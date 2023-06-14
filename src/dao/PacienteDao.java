package dao;

import util.Conexao;
import java.sql.ResultSet;
import java.sql.SQLException;

import model.Paciente;

public class PacienteDao{
	
	private boolean insert(Paciente p){
		Conexao con = null;
		try {
			con = new Conexao();
			p.setID_paciente(con.retornaIDMax("pacientes"));
			con.executeUpdate("INSERT INTO pacientes(id,nome,email,nascimento,telefone,senha) VALUES ("+ 
			p.getID_paciente() 
			+",\'"+ p.getNome() + "\',\'" 
			+ p.getEmail() + "\',\'"
			+ p.getDatNasc() + "\',\'"
			+ p.getN_tel() + "\',\'" 
			+ p.getSenha() + "\');");
			con.fecharConexao();
			return true;
		}catch(SQLException e) {
			System.out.print("erro ao inserir dados na tabela");
			return false;
		}
	}
	
	public Paciente login(String email, String senha) {
		Conexao con = null;
		try {
			con = new Conexao();
			ResultSet rs = con.executeQuery("SELECT * FROM pacientes WHERE email =\'" + email + "\' AND senha =\'" + senha + "\';");
			con.fecharConexao();
			System.out.print("login realizado com sucesso");
			if(rs.next()) {
			return new Paciente(
						rs.getInt("id"),
						rs.getString("nome"),
						rs.getString("email"),
						rs.getDate("nascimento"),
						rs.getString("telefone"),
						rs.getString("senha")
					);
			}else {
				return null;
			}
		}catch(SQLException e) {
			System.out.print("erro ao ler os dados da tabela");
			return null;
		}
	}
	
	public boolean cadastro(Paciente p){
		if(p != null) {
			Conexao con = new Conexao();
			insert(new Paciente(p.getNome(),p.getEmail(),p.getDatNasc(),p.getN_tel(),p.getSenha()));
			con.fecharConexao();
			return true;
		}else {
			return false;
		}
	}
	
	public void update(Paciente p) {
		Conexao con = null;
		try {
			con = new Conexao();
			con.executeUpdate("UPDATE pacientes SET email =\'" + p.getEmail() + "\'," + "telefone =\'" + p.getN_tel() + "\'\n" + "WHERE id"+ "=" + p.getID_paciente());
			con.fecharConexao();
		}catch(SQLException e) {
			System.out.print("erro ao atualizar dados na tabela");
		}
	}
	
	public void delete(Paciente p) {
		Conexao con = null;
		try {
			con = new Conexao();
			con.executeUpdate("DELETE FROM pacientes WHERE id =" + p.getID_paciente());
		}catch(SQLException e){
			System.out.print("erro ao excluir usuário");
		}
	}
}