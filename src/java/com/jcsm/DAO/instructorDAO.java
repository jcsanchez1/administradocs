/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.jcsm.DAO;

/**
 *
 * @author juanc
 */

import com.jcsm.configuracion.Dba;
import com.jcsm.configuracion.helpers;
import com.jcsm.entidades.TblCondicionpersona;
import com.jcsm.entidades.TblFiliales;
import com.jcsm.entidades.TblPersonas;
import com.jcsm.entidades.TblRoles;
import com.jcsm.entidades.TblInstructores;
import com.jcsm.entidades.seguridad.TblBitacora;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class instructorDAO {
        TblBitacora tmp = new TblBitacora();
    TblPersonas tper = new TblPersonas();
    TblInstructores tins = new TblInstructores();
    TblCondicionpersona tcon = new TblCondicionpersona();
    PreparedStatement ps;
    int respuesta = 0;
    String sql = "";
    ResultSet rs = null;
    Dba cn = new Dba();
    Connection con;
    helpers hlp = new helpers();
    
     public int insertarinstructor(TblInstructores ins) throws SQLException{
                 int valor = 0;

        sql = "INSERT INTO `serafil2022`.`tbl_instructores`(`nombre`, `apellido`, `correo`, `genero`, `telefono`, `fechanacimiento`, `fechacreacion`, `estado`, `identidad`) VALUES ('" + ins.getNombre() + " ', '"+ ins.getApellido() +" ', ' " + ins.getCorreo() + " ', '" + ins.getGenero()+ "', '" + ins.getTelefono() + "', '" + ins.getFechanacimiento()+ "', CURRENT_DATE(), 1, '" + ins.getIdentidad() + "');";

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
