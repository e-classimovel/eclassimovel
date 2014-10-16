package org.apache.jsp.DAO_005fJSP2;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.io.InputStream;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.sql.PreparedStatement;
import org.springframework.security.crypto.codec.Base64;
import java.sql.*;
import java.sql.DriverManager;

public final class UploadImagem_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(1);
    _jspx_dependants.add("/DAO_JSP2/conexao.jsp");
  }

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\r\n");
      out.write("     \r\n");
      out.write("     \r\n");
      out.write("    ");

        String connectionURL = "jdbc:mysql://mysql.e-classimovel.com.br/eclassimovel01";
        
        String User = "eclassimovel01";
        String Pass = "testebanco";
        
        Connection connection = null;
        Statement statement = null;
        Class.forName("com.mysql.jdbc.Driver");
        connection = DriverManager.getConnection(connectionURL, User, Pass);
        statement = connection.createStatement();
    
      out.write('\r');
      out.write('\n');
      out.write('\n');
      out.write('\n');

    String image = request.getParameter("imagem");
    String idImovel = request.getParameter("idMovel");
    
    image = Base64.decode(stringToStore.getBytes());

    String query = "INSERT INTO Tb_Imagem_Imovel (idImovel,imagem)  VALUES ('%s', '%s')";

    query =  String.format(
                    query,  
                    idImovel, 
                    image
                );

    PreparedStatement st = connection.prepareStatement(query);
  
    String result = "Imagem inserida com sucesso";
 
      out.write("\n");
      out.write(" \n");
      out.write(" ");
      out.print( image  );
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
