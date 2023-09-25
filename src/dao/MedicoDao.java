package dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import model.Medico;
import util.Conexao;

public class MedicoDao {
	private final String tabela = "medico";
	
	public Medico insert(String nome, String email, String especialidade, String uf, String crm, String hospital, String senha) {
		Conexao conn = null;
		
		try {
			conn = new Conexao();
			
			int id = conn.retornaIDMax(tabela);
			
			Medico medico = new Medico();
			medico.setId(id);
			medico.setNome(nome);
			medico.setEmail(email);
			medico.setEspecialidade(especialidade);
			medico.setUf(uf);
			medico.setCrm(crm);
			medico.setHospital(hospital);
					
			
			String query = String.format(
					"INSERT INTO %s (id, nome, email, especialidade, uf, crm, hospital, senha) VALUES (%d, '%s', '%s', '%s', '%s', '%s', '%s', '%s');",
						tabela,
						id,
						nome,
						email,
						especialidade,
						uf,
						crm,
						hospital,
						senha
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
				medico = new Medico();
				medico.setId(rs.getInt("id"));
				medico.setNome(rs.getString("nome"));
				medico.setEmail(rs.getString("email"));
				medico.setEspecialidade(rs.getString("especialidade"));
				medico.setUf(rs.getString("uf"));
				medico.setCrm(rs.getString("crm"));
				medico.setHospital(rs.getString("hospital"));
			}
			
			conn.fecharConexao();
			
			return medico;

		}catch(SQLException e) {
			System.out.print("erro ao ler os dados da tabela");
			return null;
		}
	}
	
	public ArrayList<Medico> getAll() {
		Conexao conn = null;
		
		try {
			conn = new Conexao();
			
			String query = String.format(
					"SELECT * FROM %s",
						tabela
			);
			
			ArrayList<Medico> medicos = new ArrayList<Medico>();
			Medico medico = null;
			
			ResultSet rs = conn.executeQuery(query);
			
			while (rs.next()) {
				medico = new Medico();
				medico.setId(rs.getInt("id"));
				medico.setNome(rs.getString("nome"));
				medico.setEmail(rs.getString("email"));
				medico.setEspecialidade(rs.getString("especialidade"));
				medico.setUf(rs.getString("uf"));
				medico.setCrm(rs.getString("crm"));
				medico.setHospital(rs.getString("hospital"));
				
				medicos.add(medico);
			}
			
			conn.fecharConexao();
			
			return medicos;

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
				
				Medico medico = new Medico();
				medico.setId(rs.getInt("id"));
				medico.setNome(rs.getString("nome"));
				medico.setEmail(rs.getString("email"));
				medico.setEspecialidade(rs.getString("especialidade"));
				medico.setUf(rs.getString("uf"));
				medico.setCrm(rs.getString("crm"));
				medico.setHospital(rs.getString("hospital"));
				
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
