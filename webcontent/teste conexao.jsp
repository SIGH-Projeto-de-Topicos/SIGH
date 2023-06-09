<%@page import="util.Conexao"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%! Conexao conn = new Conexao(); %>
<%
try {
	conn = new Conexao();
	ResultSet rs = conn.executeQuery("SELECT * FROM pacientes;");			
	while (rs.next()) {			
		System.out.println("id: " + rs.getInt("id"));
		System.out.println("nome: " + rs.getString("nome"));
		System.out.println("email: " + rs.getString("email"));
		System.out.println("telefone: " + rs.getString("telefone"));
		System.out.println("senha: " + rs.getString("senha"));
		
		System.out.println("\n\n\n");
	}
	
	conn.fecharConexao(); // não dá pra usar o resultset depois que fecha a conexão
}catch(SQLException e) {
	System.out.print("erro ao ler os dados da tabela");
	throw e;
}
%>