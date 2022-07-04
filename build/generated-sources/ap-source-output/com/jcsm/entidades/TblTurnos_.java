package com.jcsm.entidades;

import com.jcsm.entidades.TblAsignacionturno;
import com.jcsm.entidades.TblFiliales;
import com.jcsm.entidades.TblPersonas;
import com.jcsm.entidades.TblServicios;
import com.jcsm.entidades.TblSubservicios;
import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2022-07-04T08:42:18")
@StaticMetamodel(TblTurnos.class)
public class TblTurnos_ { 

    public static volatile SingularAttribute<TblTurnos, Integer> estado;
    public static volatile SingularAttribute<TblTurnos, String> tipo;
    public static volatile SingularAttribute<TblTurnos, Date> fechacreacion;
    public static volatile SingularAttribute<TblTurnos, TblFiliales> idfilial;
    public static volatile SingularAttribute<TblTurnos, TblPersonas> idpersona;
    public static volatile ListAttribute<TblTurnos, TblAsignacionturno> tblAsignacionturnoList;
    public static volatile SingularAttribute<TblTurnos, Integer> correlativoturno;
    public static volatile SingularAttribute<TblTurnos, Integer> idturno;
    public static volatile SingularAttribute<TblTurnos, TblSubservicios> idsubservicio;
    public static volatile SingularAttribute<TblTurnos, TblServicios> idservicio;

}