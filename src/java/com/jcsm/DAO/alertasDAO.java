/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.jcsm.DAO;

import com.jcsm.configuracion.Dba;
import com.jcsm.configuracion.helpers;
import com.jcsm.entidades.TblAlertas;
import com.jcsm.entidades.TblFiliales;
import com.jcsm.entidades.TblPersonas;
import com.jcsm.entidades.TblRoles;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author juanc
 */
public class alertasDAO {

    TblPersonas tmp = new TblPersonas();
    TblRoles tmpr = new TblRoles();
    TblFiliales tmpf = new TblFiliales();
    TblAlertas taler = new TblAlertas();
    int respuesta = 0;
    String sql = "";
    ResultSet rs = null;
    Dba cn = new Dba();
    PreparedStatement ps;
    Connection con;
    helpers hlp = new helpers();

    public int existealerta(int id) throws Exception {

        sql = "SELECT\n"
                + "COUNT(*) as cantidad\n"
                + "FROM\n"
                + "tbl_alertas\n"
                + "WHERE\n"
                + "tbl_alertas.diaalerta = DAY(CURRENT_DATE) AND\n"
                + "tbl_alertas.idpersona = " + id;
        rs = cn.ejecutarConsultaprograma(sql);
        while (rs.next()) {
            respuesta = rs.getInt("cantidad");
        }
        return respuesta;
    }

    public int isertaralerta(TblAlertas ale) throws SQLException {
        sql = "INSERT INTO serafil2022.tbl_alertas(idpersona, Descripcion, diaalerta, fechacreacion, estado) VALUES (" + ale.getIdpersona().getId() + " , '" + ale.getDescripcion() + "' , " + ale.getDiaalerta() + " , CURRENT_DATE() , 1)";
        int valor = 0;
        try {
            con = cn.conectarprograma();
            valor = cn.query.executeUpdate(sql);

        } catch (Exception e) {
        } finally {
            cn.commit();
            cn.desconectar();
        }

        return valor;

    }
}
