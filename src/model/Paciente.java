package model;

import java.sql.Date;

public class Paciente {
	private Integer id;
	private String nome;
	private String email;
	private Date nascimento;
	private String telefone;
	private String senha;
	
	public Paciente(int id, String nome, String email, Date nascimento, String telefone, String senha) {
		setId(id);
		setNome(nome);
		setEmail(email);
		setSenha(senha);
		setNascimento(nascimento);
		setTelefone(telefone);
		setSenha(senha);
	}
	
	
	public int getId() {
		return id;
	}
	
	public String getNome() {
		return nome;
	}
	
	public String getEmail() {
		return email;
	}
	
	public Date getNascimento() {
		return nascimento;
	}
	
	public String getTelefone() {
		return telefone;
	}
	
	public String getSenha() {
		return senha;
	}
	
	
	public void setId(int id) {
		this.id = id;
	}
	
	public void setNome(String nome) {
		this.nome = nome;
	}
	
	public void setEmail(String email) {
		this.email = email;
	}
	
	public void setNascimento(Date nascimento) {
		this.nascimento = nascimento;
	}
	
	public void setTelefone(String telefone) {
		this.telefone = telefone;
	}
	
	public void setSenha(String senha) {
		this.senha = senha;
	}
}
	