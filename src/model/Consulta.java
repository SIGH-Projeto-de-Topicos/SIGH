package model;

import java.sql.Date;
import java.time.LocalTime;

public class Consulta{	
	private int id;
	private String clinica;
	private Date data;
	private LocalTime hora;
	private String modalidade;
	private int idPaciente;
	private int idMedico;
	
	public Consulta(int id, String clinica, Date data, LocalTime hora, String modalidade, int idPaciente, int idMedico){
		setId(id);
		setClinica(clinica);
		setData(data);
		setHora(hora);
		setModalidade(modalidade);
		setIdPaciente(idPaciente);
		setIdMedico(idMedico);
	}
	
	
	public int getId() {
		return id;
	}
	
	public String getClinica() {
		return clinica;
	}
	
	public Date getData() {
		return data;
	}
	
	public LocalTime getHora() {
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
	
	public void setData(Date data) {
		this.data = data;
	}
	
	public void setHora(LocalTime hora) {
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
