package com.jcsm.entidades;

import com.jcsm.entidades.TblPersonas;
import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2022-07-04T08:42:18")
@StaticMetamodel(TblAlertas.class)
public class TblAlertas_ { 

    public static volatile SingularAttribute<TblAlertas, String> descripcion;
    public static volatile SingularAttribute<TblAlertas, Integer> idalerta;
    public static volatile SingularAttribute<TblAlertas, Integer> estado;
    public static volatile SingularAttribute<TblAlertas, Date> fechacreacion;
    public static volatile SingularAttribute<TblAlertas, TblPersonas> idpersona;
    public static volatile SingularAttribute<TblAlertas, Integer> diaalerta;

}