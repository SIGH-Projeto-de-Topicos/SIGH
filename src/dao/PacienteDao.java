package dao;

import util.Conexao;
import java.sql.ResultSet;
import java.sql.SQLException;

import model.Paciente;

public class PacienteDao {
	private final String tabela = "paciente";
	
	public Paciente insert(String nome, String email, String nascimento, String telefone, String senha){
		Conexao conn = null;
		
		try {
			conn = new Conexao();
			
			int id = conn.retornaIDMax(tabela);
			
			Paciente paciente = new Paciente(
					id,
					nome,
					email,
					nascimento,
					telefone,
					senha
			);
					
			
			String query = String.format(
					"INSERT INTO %s (id, nome, email, nascimento, telefone, senha) VALUES (%d, '%s', '%s', '%s', '%s', '%s');",
						tabela,
						paciente.getId(),
						paciente.getNome(),
						paciente.getEmail(),
						paciente.getNascimento(),
						paciente.getTelefone(),
						paciente.getSenha()
			);
			
			conn.executeUpdate(query);
			conn.fecharConexao();
			
			return paciente;
			
		}catch(SQLException e) {
			System.out.print("erro ao inserir dados na tabela");
			return null;
		}
	}
	
	public Paciente get(int id) {
		Conexao conn = null;
		
		try {
			conn = new Conexao();
			
			String query = String.format(
					"SELECT * FROM %s WHERE id=%d;",
						tabela,
						id
			);
			
			Paciente paciente = null;
			
			ResultSet rs = conn.executeQuery(query);
			
			if (rs.next()) {
				paciente = new Paciente(
						rs.getInt("id"),
						rs.getString("nome"),
						rs.getString("email"),
						rs.getDate("nascimento").toString(),
						rs.getString("telefone"),
						rs.getString("senha")
				);
			}
			
			conn.fecharConexao();
			
			return paciente;

		}catch(SQLException e) {
			System.out.print("erro ao ler os dados da tabela");
			return null;
		}
	}
	
	public void update(int id, String email, String telefone) {
		Conexao conn = null;
		
		try {
			conn = new Conexao();
			
			String update = String.format(
					"UPDATE %s SET email='%s', telefone='%s' WHERE id=%d;",
						tabela,
						email,
						telefone,
						id
			);
			
			conn.executeUpdate(update);
			conn.fecharConexao();
			
		} catch(SQLException e) {
			System.out.print("erro ao atualizar dados na tabela");
		}
	}
	
	public void delete(int id) {
		Conexao conn = null;
		
		try {
			conn = new Conexao();
			
			String update = String.format(
					"DELETE FROM %s WHERE id=%d;",
						tabela,
						id
			);
			
			conn.executeUpdate(update);
			
		}catch(SQLException e){
			System.out.print("erro ao excluir usuário");
		}
	}
	
	public Paciente login(String email, String senha) {
		Conexao conn = null;
		
		try {
			conn = new Conexao();
			
			String query = String.format(
					"SELECT * FROM %s WHERE email='%s' AND senha='%s';",
						tabela,
						email,
						senha
			);
			
			ResultSet rs = conn.executeQuery(query);
			
			if(rs.next()) {
				System.out.print("login realizado com sucesso");
				
				Paciente paciente = new Paciente(
						rs.getInt("id"),
						rs.getString("nome"),
						rs.getString("email"),
						rs.getDate("nascimento").toString(),
						rs.getString("telefone"),
						rs.getString("senha")
				);
				
				conn.fecharConexao();
				
				return paciente;
				
			}else {
				conn.fecharConexao();
				
				return null;
			}

		}catch(SQLException e) {
			System.out.print("erro ao ler os dados da tabela");
			return null;
		}
	}
}