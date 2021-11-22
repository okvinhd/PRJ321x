package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Main_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(2);
    _jspx_dependants.add("/Header.jsp");
    _jspx_dependants.add("/Footer.jsp");
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
      response.setContentType("text/html;charset=UTF-8");
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
      out.write("<!doctype html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("    <head>\n");
      out.write("        <meta charset=\"utf-8\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("        <!-- Bootstrap CSS -->\n");
      out.write("        <link href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css\" rel=\"stylesheet\" integrity=\"sha384-wEmeIV1mKuiNpC+IOBjI7aAzPcEZeedi5yW5f2yOq55WWLwNGmvvx4Um1vskeMj0\" crossorigin=\"anonymous\">\n");
      out.write("        <title>Main JSP Page</title>\n");
      out.write("        <style>\n");
      out.write("            .heigh{\n");
      out.write("                height: 100px;\n");
      out.write("            }\n");
      out.write("            .btn-secondary{\n");
      out.write("                color: #000!important;\n");
      out.write("            }\n");
      out.write("        </style>\n");
      out.write("\n");
      out.write("    </head>\n");
      out.write("    <body class=\"d-flex h-100 text-center text-white bg-dark\">\n");
      out.write("\n");
      out.write("        <div class=\"cover-container d-flex w-100 h-100 p-3 mx-auto flex-column\">\n");
      out.write("            <div class=\"Header\">\n");
      out.write("                ");
      out.write("\n");
      out.write("\n");
      out.write("    \n");
      out.write("        <!doctype html>\n");
      out.write("        <html lang=\"en\">\n");
      out.write("\n");
      out.write("        <head>\n");
      out.write("            <meta charset=\"utf-8\">\n");
      out.write("            <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("            <!-- Bootstrap CSS -->\n");
      out.write("            <link href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css\" rel=\"stylesheet\"\n");
      out.write("                integrity=\"sha384-wEmeIV1mKuiNpC+IOBjI7aAzPcEZeedi5yW5f2yOq55WWLwNGmvvx4Um1vskeMj0\"\n");
      out.write("                crossorigin=\"anonymous\">\n");
      out.write("            <title>Header</title>\n");
      out.write("            <style>\n");
      out.write("\n");
      out.write("            </style>\n");
      out.write("\n");
      out.write("        </head>\n");
      out.write("\n");
      out.write("        <body>\n");
      out.write("\n");
      out.write("            <svg xmlns=\"http://www.w3.org/2000/svg\" style=\"display: none;color: white;\">\n");
      out.write("                <symbol class=\"text-white\" id=\"bootstrap\" viewBox=\"0 0 118 94\">\n");
      out.write("                    <title>Bootstrap</title>\n");
      out.write("                    <path fill-rule=\"evenodd\" clip-rule=\"evenodd\"\n");
      out.write("                        d=\"M24.509 0c-6.733 0-11.715 5.893-11.492 12.284.214 6.14-.064 14.092-2.066 20.577C8.943 39.365 5.547 43.485 0 44.014v5.972c5.547.529 8.943 4.649 10.951 11.153 2.002 6.485 2.28 14.437 2.066 20.577C12.794 88.106 17.776 94 24.51 94H93.5c6.733 0 11.714-5.893 11.491-12.284-.214-6.14.064-14.092 2.066-20.577 2.009-6.504 5.396-10.624 10.943-11.153v-5.972c-5.547-.529-8.934-4.649-10.943-11.153-2.002-6.484-2.28-14.437-2.066-20.577C105.214 5.894 100.233 0 93.5 0H24.508zM80 57.863C80 66.663 73.436 72 62.543 72H44a2 2 0 01-2-2V24a2 2 0 012-2h18.437c9.083 0 15.044 4.92 15.044 12.474 0 5.302-4.01 10.049-9.119 10.88v.277C75.317 46.394 80 51.21 80 57.863zM60.521 28.34H49.948v14.934h8.905c6.884 0 10.68-2.772 10.68-7.727 0-4.643-3.264-7.207-9.012-7.207zM49.948 49.2v16.458H60.91c7.167 0 10.964-2.876 10.964-8.281 0-5.406-3.903-8.178-11.425-8.178H49.948z\">\n");
      out.write("                    </path>\n");
      out.write("                </symbol>\n");
      out.write("            </svg>\n");
      out.write("\n");
      out.write("            <header class=\"p-3 bg-dark text-white\">\n");
      out.write("                <div class=\"container\">\n");
      out.write("                    <div class=\"d-flex flex-wrap align-items-center justify-content-center justify-content-lg-start\">\n");
      out.write("                        <a href=\"/\" class=\"d-flex align-items-center mb-2 mb-lg-0 text-white text-decoration-none\">\n");
      out.write("                            <svg class=\"bi me-2\" width=\"40\" height=\"32\" role=\"img\" aria-label=\"Bootstrap\">\n");
      out.write("                                <use xlink:href=\"#bootstrap\" />\n");
      out.write("                            </svg>\n");
      out.write("                        </a>\n");
      out.write("\n");
      out.write("                        <ul class=\"nav col-12 col-lg-auto me-lg-auto mb-2 justify-content-center mb-md-0\">\n");
      out.write("                            <li><a href=\"/Project1_Vinhmfx10710_PRJ321x/main.jsp\"\n");
      out.write("                                    class=\"nav-link px-2 text-white\">Home</a></li>\n");
      out.write("                            <li><a href=\"/Project1_Vinhmfx10710_PRJ321x/PrintOld/Print.jsp\" class=\"nav-link px-2 text-white\">Number\n");
      out.write("                                    old</a></li>\n");
      out.write("                            <li><a href=\"/Project1_Vinhmfx10710_PRJ321x/Fibo/Fibo.jsp\" class=\"nav-link px-2 text-white\">Fibonacci</a>\n");
      out.write("                            </li>\n");
      out.write("                            <li><a href=\"/Project1_Vinhmfx10710_PRJ321x/reg.jsp\" class=\"nav-link px-2 text-white\">Subject\n");
      out.write("                                    Registration</a></li>\n");
      out.write("                        </ul>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </header>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("            <script src=\"https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js\"\n");
      out.write("                integrity=\"sha384-p34f1UUtsS3wqzfto5wAAmdvj+osOnFyQFpp4Ua3gs/ZVWx6oOypYoCJhGGScy+8\"\n");
      out.write("                crossorigin=\"anonymous\"></script>\n");
      out.write("            <script src=\"https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js\"\n");
      out.write("                integrity=\"sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p\"\n");
      out.write("                crossorigin=\"anonymous\"></script>\n");
      out.write("            <script src=\"https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.min.js\"\n");
      out.write("                integrity=\"sha384-lpyLfhYuitXl2zRZ5Bn2fqnhNAKOAaM/0Kr9laMspuaMiZfGmfwRNFh8HlMy49eQ\"\n");
      out.write("                crossorigin=\"anonymous\"></script>\n");
      out.write("        </body>\n");
      out.write("\n");
      out.write("        </html>");
      out.write("\n");
      out.write("            </div>\n");
      out.write("            <div class=\"heigh\"></div>\n");
      out.write("\n");
      out.write("            <main class=\"px-3\">\n");
      out.write("                <h1>Project 1 - Introduction and usage of Servlet and JSP</h1>\n");
      out.write("                <h2 class=\"display-2\">Nguyễn Mậu Vinh</h2>\n");
      out.write("                <h3 class=\"display-3\">VinhnmFX10710</h3>\n");
      out.write("                <p class=\"lead\"></p>\n");
      out.write("                <p class=\"lead\">\n");
      out.write("                    <a href=\"https://courses.funix.edu.vn/\" class=\"btn btn-lg btn-secondary fw-bold border-white bg-white\">FUNiX</a>\n");
      out.write("                </p>\n");
      out.write("            </main>\n");
      out.write("\n");
      out.write("            <div class=\"heigh\"></div>\n");
      out.write("            <div class=\"Footer\">\n");
      out.write("                ");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta charset=\"utf-8\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("        <!-- Bootstrap CSS -->\n");
      out.write("        <link href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css\" rel=\"stylesheet\" integrity=\"sha384-wEmeIV1mKuiNpC+IOBjI7aAzPcEZeedi5yW5f2yOq55WWLwNGmvvx4Um1vskeMj0\" crossorigin=\"anonymous\">\n");
      out.write("        <title>Header</title>\n");
      out.write("        <style>\n");
      out.write("\n");
      out.write("        </style>\n");
      out.write("\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <footer class=\"footer mt-auto py-3 bg-light\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <span class=\"text-muted\">Vinhmfx10710 PRJ321X FUNiX</span>\n");
      out.write("            </div>\n");
      out.write("        </footer>\n");
      out.write("\n");
      out.write("\n");
      out.write("        <script src=\"https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js\" integrity=\"sha384-p34f1UUtsS3wqzfto5wAAmdvj+osOnFyQFpp4Ua3gs/ZVWx6oOypYoCJhGGScy+8\" crossorigin=\"anonymous\"></script>\n");
      out.write("        <script src=\"https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js\" integrity=\"sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p\" crossorigin=\"anonymous\"></script>\n");
      out.write("        <script src=\"https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.min.js\" integrity=\"sha384-lpyLfhYuitXl2zRZ5Bn2fqnhNAKOAaM/0Kr9laMspuaMiZfGmfwRNFh8HlMy49eQ\" crossorigin=\"anonymous\"></script>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("        <script src=\"https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js\"\n");
      out.write("                integrity=\"sha384-p34f1UUtsS3wqzfto5wAAmdvj+osOnFyQFpp4Ua3gs/ZVWx6oOypYoCJhGGScy+8\"\n");
      out.write("        crossorigin=\"anonymous\"></script>\n");
      out.write("        <script src=\"https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js\"\n");
      out.write("                integrity=\"sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p\"\n");
      out.write("        crossorigin=\"anonymous\"></script>\n");
      out.write("        <script src=\"https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.min.js\"\n");
      out.write("                integrity=\"sha384-lpyLfhYuitXl2zRZ5Bn2fqnhNAKOAaM/0Kr9laMspuaMiZfGmfwRNFh8HlMy49eQ\"\n");
      out.write("        crossorigin=\"anonymous\"></script>\n");
      out.write("    </body>\n");
      out.write("</html>");
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
