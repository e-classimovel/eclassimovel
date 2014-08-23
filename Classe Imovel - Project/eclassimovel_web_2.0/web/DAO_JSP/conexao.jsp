    <%@page language="java" import="java.sql.*" %> 
    <%
        
        String connectionURL = "jdbc:mysql://localhost/ECLASSIMOVEL";
        String User = "root";
        String Pass = "root";
        Connection connection = null;
        Statement statement = null;
        ResultSet rs = null;
        Class.forName("com.mysql.jdbc.Driver").newInstance();
        connection = DriverManager.getConnection(connectionURL, User, Pass);
        statement = connection.createStatement();
    %>