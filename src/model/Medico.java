package model;

public class Medico {
	private Integer id;
	private String nome;
	private String email;
	private String especialidade;
	private String uf;
	private String hospital;
	private String senha;
	
	public Medico(int id, String nome, String email, String especialidade, String uf, String hospital, String senha) {
		setId(id);
		setNome(nome);
		setEmail(email);
		setEspecialidade(especialidade);
		setUf(uf);
		setHospital(hospital);
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
	
	public String getEspecialidade() {
		return especialidade;
	}
	
	public String getUf() {
		return uf;
	}
	
	public String getHospital() {
		return hospital;
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
	
	public void setEspecialidade(String especialidade) {
		this.especialidade = especialidade;
	}
	
	public void setUf(String uf) {
		this.uf = uf;
	}
	
	public void setHospital(String hospital) {
		this.hospital = hospital;
	}
	
	public void setSenha(String senha) {
		this.senha = senha;
	}
}
