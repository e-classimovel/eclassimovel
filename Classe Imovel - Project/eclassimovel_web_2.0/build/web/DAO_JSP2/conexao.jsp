
    <%@page language="java" import="java.sql.*" %> 
    <%@page language="java" import="java.sql.DriverManager" %> 
    <%
        String connectionURL = "jdbc:mysql://mysql.e-classimovel.com.br/eclassimovel01";
        
        String User = "eclassimovel01";
        String Pass = "testebanco";
        
        Connection connection = null;
        Statement statement = null;
        Class.forName("com.mysql.jdbc.Driver");
        connection = DriverManager.getConnection(connectionURL, User, Pass);
        statement = connection.createStatement();
    %>
