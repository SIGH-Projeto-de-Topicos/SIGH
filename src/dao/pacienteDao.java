package dao;

import util.Conexao;
import java.sql.ResultSet;
import java.sql.SQLException;

import model.Paciente;

public class pacienteDao{
	public boolean insert(Paciente p){
		Conexao con = null;
		try {
			con = new Conexao();
			p.setID_paciente(con.retornaIDMax("paciente"));
			con.executeUpdate("INSERT INTO pacientes VALUES (" + p.getID_paciente() + "," + p.getNome() + "," + p.getEmail() + "," + p.getDatNasc() + ","+ p.getN_tel() + "," + p.getSenha() + ");");
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
			ResultSet rSet = con.executeQuery("SELECT * FROM consulta WHERE email =" + email + "AND senha =" + senha + ";");
			con.fecharConexao();
			
			if (rSet.next()) {
				return new Paciente(
						rSet.getInt("id"),
						rSet.getString("nome"),
						rSet.getString("email"),
						rSet.getDate("nascimento"),
						rSet.getString("telefone"),
						rSet.getString("senha")
					);
			} else {
				System.out.print("usuário e/ou senha está/estão incorretos");
				return null;
			}
		}catch(SQLException e) {
			System.out.print("erro ao ler os dados da tabela");
			return null;
		}
	}
	
	public void update(Paciente p) {
		Conexao con = null;
		try {
			con = new Conexao();
			con.executeUpdate("UPDATE pacientes SET email =" + p.getEmail() + "," + "telefone =" + p.getN_tel() + "\n" + "WHERE" + "id"+ "=" + p.getID_paciente());
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