package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class ejemplo_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"es\">\n");
      out.write("<head>\n");
      out.write("    <meta charset=\"UTF-8\">\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("    <title>GameStore - Consolas y Accesorios</title>\n");
      out.write("    <link rel=\"stylesheet\" href=\"css/style.css\">\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("    <!-- Encabezado -->\n");
      out.write("    <header>\n");
      out.write("        <div class=\"logo\">\n");
      out.write("            <h1>GameStore</h1>\n");
      out.write("        </div>\n");
      out.write("        <nav>\n");
      out.write("            <ul>\n");
      out.write("                <li><a href=\"index.jsp\">Inicio</a></li>\n");
      out.write("                <li><a href=\"consolas.jsp\">Consolas</a></li>\n");
      out.write("                <li><a href=\"accesorios.jsp\">Accesorios</a></li>\n");
      out.write("                <li><a href=\"contacto.jsp\">Contacto</a></li>\n");
      out.write("                <li><a href=\"login.jsp\">Iniciar sesión</a></li>\n");
      out.write("            </ul>\n");
      out.write("        </nav>\n");
      out.write("    </header>\n");
      out.write("\n");
      out.write("    <!-- Banner principal -->\n");
      out.write("    <section class=\"banner\">\n");
      out.write("        <h2>Las Mejores Consolas y Accesorios del Mercado</h2>\n");
      out.write("        <p>Encuentra los productos de gaming más populares al mejor precio.</p>\n");
      out.write("        <a href=\"productos.jsp\" class=\"btn\">Ver Productos</a>\n");
      out.write("    </section>\n");
      out.write("\n");
      out.write("    <!-- Sección de productos destacados -->\n");
      out.write("    <section class=\"productos-destacados\">\n");
      out.write("        <h3>Productos Destacados</h3>\n");
      out.write("        <div class=\"productos\">\n");
      out.write("            <!-- Puedes repetir este bloque para cada producto -->\n");
      out.write("            <div class=\"producto\">\n");
      out.write("                <img src=\"img/ps5.jpg\" alt=\"PS5\">\n");
      out.write("                <h4>PlayStation 5</h4>\n");
      out.write("                <p>Precio: S/. 2999.00</p>\n");
      out.write("                <a href=\"detalleProducto.jsp?id=1\" class=\"btn\">Ver Detalles</a>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"producto\">\n");
      out.write("                <img src=\"img/xbox_series_x.jpg\" alt=\"Xbox Series X\">\n");
      out.write("                <h4>Xbox Series X</h4>\n");
      out.write("                <p\n");
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
