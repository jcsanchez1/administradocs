package com.jcsm.entidades;

import com.jcsm.entidades.TblServicios;
import com.jcsm.entidades.TblTurnos;
import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2022-07-04T08:42:18")
@StaticMetamodel(TblSubservicios.class)
public class TblSubservicios_ { 

    public static volatile SingularAttribute<TblSubservicios, String> subservicio;
    public static volatile SingularAttribute<TblSubservicios, Integer> estado;
    public static volatile ListAttribute<TblSubservicios, TblTurnos> tblTurnosList;
    public static volatile SingularAttribute<TblSubservicios, Integer> idsubservicio;
    public static volatile SingularAttribute<TblSubservicios, TblServicios> idservicio;

}