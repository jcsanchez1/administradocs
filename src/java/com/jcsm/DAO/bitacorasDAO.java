/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.jcsm.DAO;

import com.jcsm.configuracion.Dba;
import com.jcsm.entidades.seguridad.TblBitacora;
import java.sql.ResultSet;

/**
 *
 * @author juanc
 */
public class bitacorasDAO {

    TblBitacora tmp = new TblBitacora();
    int respuesta = 0;
    String sql = "";
    ResultSet rs = null;
    Dba cn = new Dba();
}
