package controlador;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.Usuario;
import modelo.UsuarioDAO;
import org.apache.tomcat.util.http.fileupload.FileItemFactory;
import org.apache.tomcat.util.http.fileupload.disk.DiskFileItemFactory;

public class Controller extends HttpServlet {

    Usuario usuario = new Usuario();
    UsuarioDAO usuarioDAO = new UsuarioDAO();
    int idUsuario;


    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String menu = request.getParameter("menu");
        String accion = request.getParameter("accion");

        if (menu.equals("Principal")) {
            request.getRequestDispatcher("admin.jsp").forward(request, response);
        }

        if (menu.equals("Productos")) {
////                    break;
//                case "Guardar":
//                    ArrayList<String> lista = new ArrayList<>();
//                    try {
//                        FileItemFactory file = new DiskFileItemFactory();
//                        ServletFileUpload fileUpload = new ServletFileUpload(file);
//                    } catch (Exception e) {
//                    }
//
//                    break;
//            }

            request.getRequestDispatcher("productos.jsp").forward(request, response);
        }

        if (menu.equals("Empleados")) {

            switch (accion) {
                case "Listar":
                    List lista = usuarioDAO.Listar();
                    request.setAttribute("usuarios", lista);

                    break;

                case "Agregar":
                    int dni = Integer.parseInt(request.getParameter("txtdocumento"));
                    String nombres = request.getParameter("txtnombre");
                    String correo = request.getParameter("txtcorreo");
                    String password = request.getParameter("txtpassword");
                    String estado = request.getParameter("txtestado");
                    String rol = request.getParameter("txtrol");

                    usuario.setDni(dni);
                    usuario.setNombres(nombres);
                    usuario.setCorreo(correo);
                    usuario.setPassword(password);
                    usuario.setEstado(estado);
                    usuario.setRol(rol);
                    usuarioDAO.Agregar(usuario);
                    request.getRequestDispatcher("Controller?menu=Empleados&accion=Listar").forward(request, response);
                    break;

                case "Actualizar":
                    int dniUpdate = Integer.parseInt(request.getParameter("txtdocumento"));
                    String nombreUpdate = request.getParameter("txtnombre");
                    String correoUpdate = request.getParameter("txtcorreo");
                    String passwordUpdate = request.getParameter("txtpassword");
                    String estadoUpdate = request.getParameter("txtestado");
                    String rolUpdate = request.getParameter("txtrol");

                    usuario.setDni(dniUpdate);
                    usuario.setNombres(nombreUpdate);
                    usuario.setCorreo(correoUpdate);
                    usuario.setPassword(passwordUpdate);
                    usuario.setEstado(estadoUpdate);
                    usuario.setRol(rolUpdate);
                    usuario.setId(idUsuario);
                    usuarioDAO.Actualizar(usuario);
                    request.getRequestDispatcher("Controller?menu=Empleados&accion=Listar").forward(request, response);
                    break;

                case "Cargar":
                    idUsuario = Integer.parseInt(request.getParameter("id"));
                    Usuario usuario = usuarioDAO.ListarPorId(idUsuario);
                    request.setAttribute("usuarioSeleccionado", usuario);
                    request.getRequestDispatcher("Controller?menu=Empleados&accion=Listar").forward(request, response);
                    break;

                case "Eliminar":

                    idUsuario = Integer.parseInt(request.getParameter("id"));
                    usuarioDAO.Eliminar(idUsuario);
                    request.getRequestDispatcher("Controller?menu=Empleados&accion=Listar").forward(request, response);

                    break;

            }

            request.getRequestDispatcher("empleados.jsp").forward(request, response);
        }

        if (menu.equals("Clientes")) {
            request.getRequestDispatcher("clientes.jsp").forward(request, response);
        }

        if (menu.equals("Ventas")) {
            request.getRequestDispatcher("ventas.jsp").forward(request, response);
        }

    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
