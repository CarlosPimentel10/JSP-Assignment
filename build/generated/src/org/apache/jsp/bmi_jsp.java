package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.text.DecimalFormat;

public final class bmi_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(4);
    _jspx_dependants.add("/htmlheadtag.jsp");
    _jspx_dependants.add("/header.jsp");
    _jspx_dependants.add("/menu.jsp");
    _jspx_dependants.add("/footer.jsp");
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
      out.write("    <body>\n");
      out.write("        ");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Internet Programming : Assignment 2</title>\n");
      out.write("        <!-- Bootstrap -->\n");
      out.write("        <link href=\"css/bootstrap.min.css\" rel=\"stylesheet\"> \n");
      out.write("        <link href=\"css/bootstrap-theme.min.css\" rel=\"stylesheet\">\n");
      out.write("    </head>\n");
      out.write("    ");
      out.write("\n");
      out.write("        ");
      out.write("<!-- Header -->\n");
      out.write("<div class=\"container\">\n");
      out.write("    <div class=\"row\">\n");
      out.write("        <div class=\"col-lg-12 text-center\">\n");
      out.write("            <h3>Internet Programming</h3>\n");
      out.write("            <h4>Assignment 2</h4>\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("        <div class=\"container\">\n");
      out.write("            ");
      out.write("\n");
      out.write("<nav class=\"navbar navbar-inverse\">\n");
      out.write("    <div class=\"container-fluid\">\n");
      out.write("          <div class=\"navbar-header\">\n");
      out.write("            <button type=\"button\" class=\"navbar-toggle collapsed\" data-toggle=\"collapse\" data-target=\"#bs-example-navbar-collapse-2\">\n");
      out.write("              <span class=\"sr-only\">Toggle navigation</span>\n");
      out.write("              <span class=\"icon-bar\"></span>\n");
      out.write("              <span class=\"icon-bar\"></span>\n");
      out.write("              <span class=\"icon-bar\"></span>\n");
      out.write("            </button>\n");
      out.write("            <a class=\"navbar-brand\" href=\"#\">Assignment 2</a>\n");
      out.write("          </div>\n");
      out.write("          <div class=\"collapse navbar-collapse\" id=\"bs-example-navbar-collapse-2\">\n");
      out.write("            <ul class=\"nav navbar-nav\">\n");
      out.write("              <li><a href=\"index.jsp\">Introduction<span class=\"sr-only\">(current)</span></a></li>\n");
      out.write("              <li><a href=\"bmi.jsp\">BMI Calculaor</a></li>\n");
      out.write("              <li><a href=\"#\">Currency Exchange</a></li>\n");
      out.write("              <li><a href=\"#\">Tuition Calculation</a></li>\n");
      out.write("              <li><a href=\"#\">Mark Converter</a></li>\n");
      out.write("              <li><a href=\"#\">Gred Calculator</a></li>        \n");
      out.write("            </ul>\n");
      out.write("          </div>\n");
      out.write("    </div>   \n");
      out.write("</nav>\n");
      out.write("\n");
      out.write("            <div class=\"row\">\n");
      out.write("                <div class=\"box\">\n");
      out.write("                    <div class=\"col-lg-12 text-center\">\n");
      out.write("                        <h1 class=\"brand-name\">BMI Calculator\n");
      out.write("                        <img src=\"img/bmi1.jpg\" alt=\"\"/></h1>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("            <div class=\"row\">\n");
      out.write("                <div class=\"box\">\n");
      out.write("                    <div class=\"col-lg-6\">\n");
      out.write("                        <hr>\n");
      out.write("                            <h2 class=\"intro-text text-center\">Question 1 :\n");
      out.write("                                <strong>Body Mass Index Problem</strong>\n");
      out.write("                            </h2>\n");
      out.write("                        <hr>\n");
      out.write("\n");
      out.write("                        <hr class=\"visible-xs\">\n");
      out.write("                        <p>Write a JSP that allow users enter the weight and the height of a person and then displays his/her Body Mass Index using the following formula:</p>\n");
      out.write("                        <img class=\"img-responsive img-border img-left\" src=\"img/bmi-formula.jpg\" alt=\"\">\n");
      out.write("\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-lg-6\">\n");
      out.write("                        <hr>\n");
      out.write("                        <h2 class=\"intro-text text-center\">Answer :<strong>Body Mass Index Problem</strong></h2>\n");
      out.write("                        <hr>\n");
      out.write("                        <hr class=\"visible-xs\">\n");
      out.write("                        <div align=\"center\">\n");
      out.write("                            <div style=\"background-color:green; color:yellow; font-weight:bold; \">Body Mass Index Calculator</div><br>\n");
      out.write("                            <form action=\"bmi.jsp\" method=\"POST\">\n");
      out.write("                                Weight : <input type=\"text\" name=\"weightTextBox\" id=\"weightTextBox\" value=\"\" />&nbsp; kg<br><br>\n");
      out.write("                                Height : <input type=\"text\" name=\"heightTextBox\" id=\"heightTextBox\" value=\"\" />&nbsp; m<br><br>\n");
      out.write("                                <input type=\"submit\" value=\"Calculate BMI\" name=\"calculateBMIButton\" />\n");
      out.write("                            </form>\n");
      out.write("                        </div>\n");
      out.write("\n");
      out.write("                            ");

    String semakberat = request.getParameter("weightTextBox");
    String semaktinggi = request.getParameter("heightTextBox");
    if (semakberat == null && semaktinggi == null) 
    {
        
      out.write("<div align=\"center\"><h4>You can enter your Weight and Height</h4></div>");
// myText is null when the page is first requested, 
        // so do nothing
    } else if (semakberat.length() == 0 && semaktinggi.length() == 0) {  
      out.write("\n");
      out.write("            <div align=\"center\"><h4>Please Enter Weight & Height</h4></div>\n");
      out.write(" ");
 }else if (semakberat.length() == 0 && semaktinggi.length() != 0) { 
      out.write("\n");
      out.write("            <div align=\"center\"><h4>Please Enter Weight</h4></div>\n");
      out.write(" ");
 }else if (semakberat.length()!= 0 && semaktinggi.length() == 0) { 
      out.write("\n");
      out.write("            <div align=\"center\"><h4>Please Enter Height</h4></div>\n");
      out.write(" ");
 } else {
        float berat=0, tinggi=0, bmi=0;           
        berat = Float.parseFloat(request.getParameter("weightTextBox"));
        tinggi = Float.parseFloat(request.getParameter("heightTextBox")); 
        DecimalFormat df = new DecimalFormat("#,###,##0.0");
        String status = new String();

        bmi = berat / (tinggi * tinggi);

        //Start : Weight Status
        if (bmi < 18.5)
           status = "Underweight";
        else if (bmi > 18.5 && bmi < 25)
           status = "Normal";   
        else if (bmi > 25 && bmi < 30)
           status = "Normal"; 
        else if (bmi > 30)
           status = "Obese";
        else
           status = "No Status";

      out.write("\n");
      out.write("        <div align=\"center\">\n");
      out.write("            <h4>Your Weight :");
      out.print( berat );
      out.write(" m</h4>\n");
      out.write("            <h4>Your Height :");
      out.print( tinggi );
      out.write(" m</h4>\n");
      out.write("            <h4>Your BMI : ");
      out.print( df.format(bmi) );
      out.write("</h4>\n");
      out.write("            <h4>Weight Status : ");
      out.print( status );
      out.write("</h4> \n");
      out.write("        </div>\n");
      out.write("\n");
      out.write(" ");
 } 
      out.write(" \n");
      out.write("                    </div>                \n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("            <div class=\"row\">\n");
      out.write("                <div class=\"box\">\n");
      out.write("\n");
      out.write("\n");
      out.write("                        <hr>\n");
      out.write("                        <h2 class=\"intro-text text-center\">JSP \n");
      out.write("                            <strong>Code</strong>\n");
      out.write("                        </h2>\n");
      out.write("                        <hr>\n");
      out.write("                        <iframe src=\"sourcecode/bmi.txt\" width=\"100%\" height=\"100%\"></iframe>                                       \n");
      out.write("\n");
      out.write("                </div>\n");
      out.write("        </div>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("        ");
      out.write("<!-- footer -->\n");
      out.write("<div class=\"container\">\n");
      out.write("    <div class=\"row\">\n");
      out.write("        <div class=\"col-lg-12 text-center\">\n");
      out.write("            <p>Copyright &copy; Mohd Rafyiq Bin Ramli (SX085606CJD04)</p>\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("</div>\n");
      out.write("        <!-- Bootstrap core JavaScript   ============================== -->\n");
      out.write("        <!-- Placed at the end of the document so the pages load faster -->\n");
      out.write("        <script src=\"js/jquery-1.12.1.min.js\"></script>\n");
      out.write("        <script src=\"js/bootstrap.min.js\"></script>\n");
      out.write("\n");
      out.write("    </body>\n");
      out.write("</html>\n");
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
