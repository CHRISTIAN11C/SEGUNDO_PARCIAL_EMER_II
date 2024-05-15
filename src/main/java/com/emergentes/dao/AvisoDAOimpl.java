package com.emergentes.dao;

import com.emergentes.modelo.Aviso;
import com.emergentes.utiles.ConexionBD;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

public class AvisoDAOimpl extends ConexionBD implements AvisoDAO {

    @Override
    public void insert(Aviso aviso) throws Exception {
        String sql = "insert into estudiantes (nombres,apellidos,seminarios,confirmado,fecha) values (?,?,?,?,?)";
        this.conectar();
        PreparedStatement ps = this.conn.prepareStatement(sql);
        ps.setString(1, aviso.getNombres());
        ps.setString(2, aviso.getApellidos());
        ps.setString(3, aviso.getSeminarios());
        ps.setString(4, aviso.getConfirmado());
        ps.setString(5, aviso.getFecha());
        ps.executeUpdate();
        this.desconectar();
    }

    @Override
    public void update(Aviso aviso) throws Exception {
        String sql = "update estudiantes set nombres=?, apellidos=?, seminarios=?, confirmado=?, fecha=? where id=?";
        this.conectar();
        PreparedStatement ps = this.conn.prepareStatement(sql);
        ps.setString(1, aviso.getNombres());
        ps.setString(2, aviso.getApellidos());
        ps.setString(3, aviso.getSeminarios());
        ps.setString(4, aviso.getConfirmado());
        ps.setString(5, aviso.getFecha());
        ps.setInt(6, aviso.getId());
        ps.executeUpdate();
        this.desconectar();
    }

    @Override
    public void delete(int id) throws Exception {
        String sql = "delete from estudiantes where id=?";
        this.conectar();
        PreparedStatement ps = this.conn.prepareStatement(sql);
        ps.setInt(1, id);
        ps.executeUpdate();
        this.desconectar();
    }

    @Override
    public List<Aviso> getAll() throws Exception {
        List<Aviso> lista = null;
        String sql = "select * from estudiantes";
        this.conectar();
        PreparedStatement ps = this.conn.prepareStatement(sql);
        ResultSet rs = ps.executeQuery();

        lista = new ArrayList<Aviso>();
        while (rs.next()) {
            Aviso avi = new Aviso();

            avi.setId(rs.getInt("id"));
            avi.setNombres(rs.getString("nombres"));
            avi.setApellidos(rs.getString("apellidos"));
            avi.setSeminarios(rs.getString("seminarios"));
            avi.setConfirmado(rs.getString("confirmado"));
            avi.setFecha(rs.getString("fecha"));

            lista.add(avi);
        }
        this.desconectar();
        return lista;
    }

    @Override
    public Aviso getById(int id) throws Exception {
        Aviso avi = new Aviso();
        try {
            String sql = "select * from estudiantes where id=?";
            PreparedStatement ps = this.conn.prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                avi.setId(rs.getInt("id"));
                avi.setNombres(rs.getString("nombres"));
                avi.setApellidos(rs.getString("apellidos"));
                avi.setSeminarios(rs.getString("seminarios"));
                avi.setConfirmado(rs.getString("confirmado"));
                avi.setFecha(rs.getString("fecha"));
            }
        } catch (SQLException e) {
            throw e;
        } finally {
            this.desconectar();
        }
        return avi;
    }

}
