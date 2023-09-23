package util;

import java.sql.*;

public class Conexao {
	private final String host = "localhost";
	private final String port = "3306";
	private final String database = "sigh";
	private final String user = "murilo";
	private final String password = "";

    public String status = "Não conectou...";
    
    private Connection connection;
    private Statement statement;

    public Conexao() {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
          
            connection = DriverManager.getConnection("jdbc:mysql://" + host + ":" + port + "/" + database, user, password);
            System.out.println("conectou!");
            
        } catch (ClassNotFoundException ex) {
            System.out.println("Nao foi possıvel encontrar a classe do Driver do MySQL " + ex);
            
        } catch (SQLException ex) {
            System.out.println("Nao foi possível conectar ao servidor " + ex);
        }
      
        try {
            statement = connection.createStatement();
        } catch (SQLException ex) {
            System.out.println("Nao foi possıvel criar a statement " + ex);
        }
    }

     public synchronized void executeUpdate(String update) throws SQLException {
        try {
            statement.executeUpdate(update);
        } catch (SQLException ex) {
            System.out.println("Nao foi possıvel executar o update " + ex);
            throw ex;
        }
    }

    public synchronized ResultSet executeQuery(String query) throws SQLException {
        try {
            return statement.executeQuery(query);
        } catch (SQLException ex) {
            System.out.println("Nao foi possıvel executar a query " + ex);
            return null; 

        }
    }

    public void fecharConexao() {
        try {
            statement.close();
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
    }

	public int retornaIDMax(String tabela) {
        try {
            String sql = "SELECT max(ID) as contador FROM " + tabela;
            ResultSet rs = this.executeQuery(sql);
            rs.next();
            return rs.getInt("contador") + 1;   
        } catch (SQLException e) {
            System.out.println("Erro na selecao do ID Maximo" + e);
            e.printStackTrace();

            return 0;
        }
    }
}
