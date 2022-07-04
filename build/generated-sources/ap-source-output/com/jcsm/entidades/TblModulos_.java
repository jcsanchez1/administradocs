package com.jcsm.entidades;

import com.jcsm.entidades.TblPermisos;
import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2022-07-04T08:42:18")
@StaticMetamodel(TblModulos.class)
public class TblModulos_ { 

    public static volatile SingularAttribute<TblModulos, String> descripcion;
    public static volatile ListAttribute<TblModulos, TblPermisos> tblPermisosList;
    public static volatile SingularAttribute<TblModulos, Integer> idmodulo;
    public static volatile SingularAttribute<TblModulos, String> titulo;
    public static volatile SingularAttribute<TblModulos, Integer> status;

}