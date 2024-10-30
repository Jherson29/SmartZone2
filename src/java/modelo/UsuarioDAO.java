package modelo;

import config.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public class UsuarioDAO {

    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    Conexion cn = new Conexion();
    int r;

    public Usuario Validar(int dni, String password) {
        Usuario usuario = new Usuario();
        String consulta = "select * from usuarios where dni = ? and password = ?";
        con = cn.getConnection();

        try {
            ps = con.prepareStatement(consulta);
            ps.setInt(1, dni);
            ps.setString(2, password);
            rs = ps.executeQuery();
            rs.next();
            do {
                usuario.setId(rs.getInt("id"));
                usuario.setDni(rs.getInt("dni"));
                usuario.setNombres(rs.getString("nombres"));
                usuario.setCorreo(rs.getString("correo"));
                usuario.setPassword(rs.getString("password"));
                usuario.setEstado(rs.getString("estado"));
                usuario.setRol(rs.getString("rol"));
            } while (rs.next());
        } catch (SQLException ex) {
            Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return usuario;
    }

    public List Listar() {
        String consulta = "select * from usuarios";
        List<Usuario> lista = new ArrayList();

        try {
            con = cn.getConnection();
            ps = con.prepareStatement(consulta);
            rs = ps.executeQuery();

            while (rs.next()) {
                Usuario usuario = new Usuario();
                usuario.setId(rs.getInt("id"));
                usuario.setDni(rs.getInt("dni"));
                usuario.setNombres(rs.getString("nombres"));
                usuario.setCorreo(rs.getString("correo"));
                usuario.setPassword(rs.getString("password"));
                usuario.setEstado(rs.getString("estado"));
                usuario.setRol(rs.getString("rol"));
                lista.add(usuario);
            }
        } catch (Exception ex) {
            Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return lista;
    }

    public int Agregar(Usuario usuario) {
        String consulta = "insert into usuarios(dni, nombres, correo, password, estado, rol) values (?, ?, ?, ?, ?, ?)";

        try {
            con = cn.getConnection();
            ps = con.prepareStatement(consulta);

            ps.setInt(1, usuario.getDni());
            ps.setString(2, usuario.getNombres());
            ps.setString(3, usuario.getCorreo());
            ps.setString(4, usuario.getPassword());
            ps.setString(5, usuario.getEstado());
            ps.setString(6, usuario.getRol());
            r = ps.executeUpdate();

            System.out.println("Filas afectadas: " + r);

        } catch (Exception ex) {
            Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return r;
    }

    public Usuario ListarPorId(int id) {
        Usuario usuario = new Usuario();
        String consulta = "select * from usuarios where id=" + id;
        con = cn.getConnection();
        try {
            ps = con.prepareStatement(consulta);
            rs = ps.executeQuery();
            while (rs.next()) {
                usuario.setDni(rs.getInt(2));
                usuario.setNombres(rs.getString(3));
                usuario.setCorreo(rs.getString(4));
                usuario.setPassword(rs.getString(5));
                usuario.setEstado(rs.getString(6));
                usuario.setRol(rs.getString(2));
            }
        } catch (Exception ex) {
            Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return usuario;
    }

    public int Actualizar(Usuario usuario) {
        String consulta = "update usuarios set dni=?, nombres=?, correo=?, password=?, estado=?, rol=? where id=?";
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(consulta);
            ps.setInt(1, usuario.getDni());
            ps.setString(2, usuario.getNombres());
            ps.setString(3, usuario.getCorreo());
            ps.setString(4, usuario.getPassword());
            ps.setString(5, usuario.getEstado());
            ps.setString(6, usuario.getRol());
            ps.setInt(7, usuario.getId());
            ps.executeUpdate();

        } catch (Exception ex) {
            Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return r;
    }

    public void Eliminar(int id) {

        String consulta = "delete from usuarios where id=" + id;
        con = cn.getConnection();
        
        try {
            ps = con.prepareStatement(consulta);
            ps.executeUpdate();
        } catch (Exception ex) {
            Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    }

}
