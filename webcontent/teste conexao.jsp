<%@page import="util.Conexao"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
Conexao conn = new Conexao();
try {
	conn = new Conexao();
	ResultSet rs = conn.executeQuery("SELECT * FROM pacientes;");
	conn.fecharConexao();			
	while (rs.next()) {			
		System.out.println("id: " + rs.getInt("id"));
		System.out.println("\n\n\n");
	}
}catch(SQLException e) {
	System.out.print("erro ao ler os dados da tabela");
}		
%>