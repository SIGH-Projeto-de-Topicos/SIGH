package model.paciente;

import java.util.Date;

public class Paciente {
	
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
	public int getN_tel() {
		return n_tel;
	}
	public void setN_tel(int n_tel) {
		this.n_tel = n_tel;
	}
	
	public String getSenha() {
		return senha;
	}
	public void setSenha(String senha) {
		this.senha = senha;
	}
	
	public int getID_paciente() {
		return ID_paciente;
	}
	public void setID_paciente(int iD_paciente) {
		ID_paciente = iD_paciente;
	}


	public Paciente(String nome, String email, Date datNasc, int n_tel,String senha, int ID_paciente){
		setNome(nome);
		setEmail(email);
		setSenha(senha);
		setDatNasc(datNasc);
		setN_tel(n_tel);
		setID_paciente(ID_paciente);
	}
	
	private int ID_paciente;
	private String nome;
	private String email;
	private String senha;
	private Date datNasc;
	private int n_tel;
}
	