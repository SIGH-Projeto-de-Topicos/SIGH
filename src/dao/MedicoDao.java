package dao;

import java.sql.ResultSet;
import java.sql.SQLException;

import model.Medico;
import util.Conexao;

public class MedicoDao {
	private final String tabela = "medico";
	
	public Medico insert(String nome, String email, String especialidade, String uf, String crm, String hospital, String senha) {
		Conexao conn = null;
		
		try {
			conn = new Conexao();
			
			int id = conn.retornaIDMax(tabela);
			
			Medico medico = new Medico(
					id,
					nome,
					email,
					especialidade,
					uf,
					crm,
					hospital,
					senha
			);
					
			
			String query = String.format(
					"INSERT INTO %s (id, nome, email, especialidade, uf, crm, hospital, senha) VALUES (%d, '%s', '%s', '%s', '%s', '%s', '%s', '%s');",
						tabela,
						medico.getId(),
						medico.getNome(),
						medico.getEmail(),
						medico.getEspecialidade(),
						medico.getUf(),
						medico.getCrm(),
						medico.getHospital(),
						medico.getSenha()
			);
			
			conn.executeUpdate(query);
			conn.fecharConexao();
			
			return medico;
			
		}catch(SQLException e) {
			System.out.print("erro ao inserir dados na tabela");
			return null;
		}
	}

	public Medico get(int id) {
		Conexao conn = null;
		
		try {
			conn = new Conexao();
			
			String query = String.format(
					"SELECT * FROM %s WHERE id=%d;",
						tabela,
						id
			);
			
			Medico medico = null;
			
			ResultSet rs = conn.executeQuery(query);
			
			if (rs.next()) {
				medico = new Medico(
						rs.getInt("id"),
						rs.getString("nome"),
						rs.getString("email"),
						rs.getString("especialidade"),
						rs.getString("uf"),
						rs.getString("crm"),
						rs.getString("hospital"),
						rs.getString("senha")
				);
			}
			
			conn.fecharConexao();
			
			return medico;

		}catch(SQLException e) {
			System.out.print("erro ao ler os dados da tabela");
			return null;
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

	public Medico login(String email, String senha) {
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
				
				Medico medico = new Medico(
						rs.getInt("id"),
						rs.getString("nome"),
						rs.getString("email"),
						rs.getString("especialidade"),
						rs.getString("uf"),
						rs.getString("crm"),
						rs.getString("hospital"),
						rs.getString("senha")
				);
				
				conn.fecharConexao();
				
				return medico;
				
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
