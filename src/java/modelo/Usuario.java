package modelo;

public class Usuario {
    int id;
    int dni;
    String nombres;
    String correo;
    String password;
    String estado;
    String rol;

    public Usuario() {
    }
    
    public Usuario(int id, int dni, String nombres, String correo, String password, String estado, String rol) {
        this.id = id;
        this.dni = dni;
        this.nombres = nombres;
        this.correo = correo;
        this.password = password;
        this.estado = estado;
        this.rol = rol;
    }

    public int getId() {
        return id;
    }
    public void setId(int id) {
        this.id = id;
    }

    public int getDni() {
        return dni;
    }
    public void setDni(int dni) {
        this.dni = dni;
    }

    public String getNombres() {
        return nombres;
    }
    public void setNombres(String nombres) {
        this.nombres = nombres;
    }

    public String getCorreo() {
        return correo;
    }
    public void setCorreo(String correo) {
        this.correo = correo;
    }

    public String getPassword() {
        return password;
    }
    public void setPassword(String password) {
        this.password = password;
    }

    public String getEstado() {
        return estado;
    }
    public void setEstado(String estado) {
        this.estado = estado;
    }
    
    public String getRol() {
        return rol;
    }
    public void setRol(String rol) {
        this.rol = rol;
    }
    
    
    
    
}
