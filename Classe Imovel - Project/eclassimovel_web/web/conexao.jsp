<!-- //@page import="java.sql.Connection"% //@page import="java.sql.DriverManager"% //@page import="java.sql.SQLException"% --> 
<html>
    <head>
        <title>e-Classimovel | Home</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="./css/Site.css" rel="stylesheet" />
    
    </head>
    <body>
    <%@page import="java.sql.*"%> 
    <%@page import="java.io.*"%> 
    <%@page import="javax.servlet.*"%>
    <%

            // Passo 1. Carregar o Driver JDBC

    //	Class.forName("org.gjt.mm.mysql.Driver");

//            Class.forName("com.mysql.jdbc.Driver");



            // Passo 2. Criar um objeto Connection 

            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ECLASSIMOVEL?user=root&password=root");

            out.println("Conexao iniciada...<br />");



            // Passo 3. Criar um objeto Statement 

            Statement s = con.createStatement(); 



            // Passo 4. Usar o objeto Statement para obter um objeto ResultSet

            String sql = "SELECT * FROM CLIENTE";

            ResultSet rs = s.executeQuery(sql);



            //Passo 5. Imprimindo o resultado

            while (rs.next()) { out.println(rs.getString(1) + " " + rs.getString(2) + "<br />"); }



            //Passo 6. Fechando conexoes

            rs.close(); s.close(); con.close();

    %> 
    </body>
</html>