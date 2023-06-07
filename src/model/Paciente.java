package model;

import java.util.Date;

public class Paciente {
	private Integer ID_paciente;
	private String nome;
	private String email;
	private Date datNasc;
	private String n_tel;
	private String senha;
	
	public Paciente(String nome, String email, Date datNasc, String n_tel, String senha){
		setNome(nome);
		setEmail(email);
		setSenha(senha);
		setDatNasc(datNasc);
		setN_tel(n_tel);
	}
	
	public Paciente(int ID_paciente, String nome, String email, Date datNasc, String n_tel, String senha){
		setID_paciente(ID_paciente);
		setNome(nome);
		setEmail(email);
		setSenha(senha);
		setDatNasc(datNasc);
		setN_tel(n_tel);
	}
	
	public int getID_paciente() {
		return ID_paciente;
	}
	public void setID_paciente(int iD_paciente) {
		ID_paciente = iD_paciente;
	}
	
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	public Date getDatNasc() {
		return datNasc;
	}
	public void setDatNasc(Date datNasc) {
		this.datNasc = datNasc;
	}
	
	public String getN_tel() {
		return n_tel;
	}
	public void setN_tel(String n_tel) {
		this.n_tel = n_tel;
	}
	
	
	public String getSenha() {
		return senha;
	}
	public void setSenha(String senha) {
		this.senha = senha;
	}
}
	