package model;

public class Consulta{	
	private int id;
	private String clinica;
	private String data;
	private String hora;
	private String modalidade;
	private int idPaciente;
	private int idMedico;
	
	
	public Consulta() {
		
	}
	
	
	public int getId() {
		return id;
	}
	
	public String getClinica() {
		return clinica;
	}
	
	public String getData() {
		return data;
	}
	
	public String getHora() {
		return hora;
	}
	
	public String getModalidade() {
		return modalidade;
	}
	
	public int getIdPaciente() {
		return idPaciente;
	}
	
	public int getIdMedico() {
		return idMedico;
	}
	
	
	public void setId(int id) {
		this.id = id;
	}
		
	public void setClinica(String clinica) {
		this.clinica = clinica;
	}
	
	public void setData(String data) {
		this.data = data;
	}
	
	public void setHora(String hora) {
		this.hora = hora;
	}
	
	public void setModalidade(String modalidade) {
		this.modalidade = modalidade;
	}
	
	public void setIdPaciente(int idPaciente) {
		this.idPaciente = idPaciente;
	}	
	
	public void setIdMedico(int idMedico) {
		this.idMedico = idMedico;
	}
}
