package model;

import java.sql.Date;
import java.time.LocalTime;

public class Consulta{	
	private int ID_consulta;
	private String clinica;
	private Date data;
	private LocalTime hora;
	private String especialidade;
	private String modalidade;
	private int ID_paciente;	
	
	public Consulta(int ID_consulta, String clinica, Date data, LocalTime hora, String especialidade,String modalidade, int ID_paciente){
		setID_consulta(ID_consulta);
		setClinica(clinica);
		setData(data);
		setHora(hora);
		setModalidade(modalidade);
		setEspecialidade(especialidade);
		setID_paciente(ID_paciente);
	}
	
	public Consulta(String clinica, Date data, LocalTime hora, String especialidade,String modalidade, int ID_paciente){
		setClinica(clinica);
		setData(data);
		setHora(hora);
		setModalidade(modalidade);
		setEspecialidade(especialidade);
		setID_paciente(ID_paciente);
	}
	
	
	public int getID_consulta() {
		return ID_consulta;
	}
	public void setID_consulta(int iD_consulta) {
		ID_consulta = iD_consulta;
	}
	
	public String getClinica() {
		return clinica;
	}
	public void setClinica(String clinica) {
		this.clinica = clinica;
	}
	
	public Date getData() {
		return data;
	}
	public void setData(Date data) {
		this.data = data;
	}
	
	public LocalTime getHora() {
		return hora;
	}
	public void setHora(LocalTime hora) {
		this.hora = hora;
	}
	
	public String getEspecialidade() {
		return especialidade;
	}
	public void setEspecialidade(String especialidade) {
		this.especialidade = especialidade;
	}
	
	public String getModalidade() {
		return modalidade;
	}
	public void setModalidade(String modalidade) {
		this.modalidade = modalidade;
	}
	
	public int getID_paciente() {
		return ID_paciente;
	}
	public void setID_paciente(int iD_paciente) {
		ID_paciente = iD_paciente;
	}	
}
