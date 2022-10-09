package Entidad;

import java.util.Date;

public class Cliente {
    private int Id;
    private String nombCliente;
    private String nombEmpresa;
    private int cantProducto;
    private String tipoProducto;
    private String lugDestino;
    private String fecha;

    public Cliente() {
    }

    public Cliente(int Id, String nombCliente, String nombEmpresa, int cantProducto, String tipoProducto, String lugDestino, String fecha) {
        this.Id = Id;
        this.nombCliente = nombCliente;
        this.nombEmpresa = nombEmpresa;
        this.cantProducto = cantProducto;
        this.tipoProducto = tipoProducto;
        this.lugDestino = lugDestino;
        this.fecha = fecha;
    }

    public int getId() {
        return Id;
    }

    public void setId(int Id) {
        this.Id = Id;
    }

    public String getNombCliente() {
        return nombCliente;
    }

    public void setNombCliente(String nombCliente) {
        this.nombCliente = nombCliente;
    }

    public String getNombEmpresa() {
        return nombEmpresa;
    }

    public void setNombEmpresa(String nombEmpresa) {
        this.nombEmpresa = nombEmpresa;
    }

    public int getCantProducto() {
        return cantProducto;
    }

    public void setCantProducto(int cantProducto) {
        this.cantProducto = cantProducto;
    }

    public String getTipoProducto() {
        return tipoProducto;
    }

    public void setTipoProducto(String tipoProducto) {
        this.tipoProducto = tipoProducto;
    }

    public String getLugDestino() {
        return lugDestino;
    }

    public void setLugDestino(String lugDestino) {
        this.lugDestino = lugDestino;
    }

    public String getFecha() {
        return fecha;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }

}
