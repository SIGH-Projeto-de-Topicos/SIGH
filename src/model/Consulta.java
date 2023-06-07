package model;

import java.sql.Date;
import java.sql.Time;

public class Consulta{	
	private int ID_consulta;
	private String clinica;
	private Date data;
	private Time hora;
	private String especialidade;
	private String modalidade;
	private int ID_paciente;	
	
	public Consulta(int ID_consulta, String clinica, Date data, Time hora, String especialidade,String modalidade, int ID_paciente){
		setID_consulta(ID_consulta);
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
	
	public Time getHora() {
		return hora;
	}
	public void setHora(Time hora) {
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
