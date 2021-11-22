package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

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
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\" itemscope itemtype=\"http://schema.org/WebPage\">\n");
      out.write("\n");
      out.write("    <head>\n");
      out.write("        <meta charset=\"utf-8\" />\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, shrink-to-fit=no\">\n");
      out.write("        <link rel=\"apple-touch-icon\" sizes=\"76x76\" href=\"https://demos.creative-tim.com/soft-ui-design-system/assets/img/apple-icon.png\">\n");
      out.write("        <link rel=\"icon\" type=\"image/png\" href=\"https://demos.creative-tim.com/soft-ui-design-system/assets/img/favicon.png\">\n");
      out.write("        <title>\n");
      out.write("            Welcome\n");
      out.write("        </title>\n");
      out.write("        <!--     Fonts and icons     -->\n");
      out.write("        <link href=\"https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700\" rel=\"stylesheet\" />\n");
      out.write("        <!-- Font Awesome Icons -->\n");
      out.write("        <script src=\"https://kit.fontawesome.com/42d5adcbca.js\" crossorigin=\"anonymous\"></script>\n");
      out.write("        <!-- CSS Files -->\n");
      out.write("        <link id=\"pagestyle\" href=\"https://demos.creative-tim.com/soft-ui-design-system/assets/css/soft-design-system.min.css?v=1.0.4\" rel=\"stylesheet\" />\n");
      out.write("    </head>\n");
      out.write("\n");
      out.write("    <body class=\"sign-in-illustration\">\n");
      out.write("        <header>\n");
      out.write("            <div class=\"page-header section-height-85\">\n");
      out.write("                <div>\n");
      out.write("                    <img class=\"position-absolute fixed-top ms-auto w-50 h-100 z-index-0 d-none d-sm-none d-md-block border-radius-section border-top-end-radius-0 border-top-start-radius-0 border-bottom-end-radius-0\" src=\"https://demos.creative-tim.com/soft-ui-design-system/assets/img/curved-images/curved8.jpg\" alt=\"image\">\n");
      out.write("                </div>\n");
      out.write("                <div class=\"container\">\n");
      out.write("                    <div class=\"row\">\n");
      out.write("                        <div class=\"col-lg-7 d-flex justify-content-center flex-column\">\n");
      out.write("                            <div class=\"card d-flex blur justify-content-center p-4 shadow-lg my-sm-0 my-sm-6 mt-8 mb-5\">\n");
      out.write("                                <div class=\"text-center\">\n");
      out.write("                                    ");

                                        if (session.getAttribute("user") != null) {
                                               
                                    
      out.write("\n");
      out.write("                                    <h1 class=\"text-gradient text-primary\">Welcome : <font style=\"color: red\">");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${user}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</font></h1>\n");
      out.write("                                    <div class=\"buttons\">\n");
      out.write("                                        <a class=\"btn bg-gradient-primary mt-4\" href=\"profile.jsp\">Check information</a>    \n");
      out.write("                                        <a class=\"btn bg-gradient-primary mt-4\" href=\"userCounter.jsp\">Display logged in users</a>\n");
      out.write("                                        ");
} else {response.sendRedirect("signIn.jsp");
                                      }
      out.write("\n");
      out.write("                                    </div>\n");
      out.write("                                    <div class=\"buttons\"><a href=\"/project3\" class=\"btn btn-lg bg-gradient-primary btn-lg w-100 mt-4 mb-0\">Back To Home</a></div>\n");
      out.write("\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </header>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
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
