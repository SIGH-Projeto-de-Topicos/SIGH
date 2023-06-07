package model.consulta;

import java.util.Date;

import model.paciente.Paciente;

public class Consulta{
	public String getLocal() {
		return local;
	}
	public void setLocal(String local) {
		this.local = local;
	}
	public Date getData() {
		return data;
	}
	public void setData(Date data) {
		this.data = data;
	}
	public Paciente getP() {
		return p;
	}
	public void setP(Paciente p) {
		this.p = p;
	}
	public int getID_paciente() {
		return ID_paciente;
	}
	public void setID_paciente(int iD_paciente) {
		ID_paciente = iD_paciente;
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
	public int getID_consulta() {
		return ID_consulta;
	}
	public void setID_consulta(int iD_consulta) {
		this.ID_consulta = iD_consulta;
	}
	
	public Consulta(String local, Date data,String especialidade,String modalidade, int ID_paciente, int ID_Consulta){
		setLocal(local);
		setData(data);
		setModalidade(modalidade);
		setEspecialidade(especialidade);
		setID_paciente(ID_paciente);
		setID_consulta(ID_consulta);
	}
	
	private int ID_paciente;
	private int ID_consulta;
	private String especialidade;
	private String modalidade;
	private String local;
	private Date data;
}
