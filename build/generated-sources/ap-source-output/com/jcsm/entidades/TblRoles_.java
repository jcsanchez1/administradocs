package com.jcsm.entidades;

import com.jcsm.entidades.TblPermisos;
import com.jcsm.entidades.TblPersonas;
import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2022-07-04T08:42:18")
@StaticMetamodel(TblRoles.class)
public class TblRoles_ { 

    public static volatile SingularAttribute<TblRoles, String> descripcion;
    public static volatile ListAttribute<TblRoles, TblPermisos> tblPermisosList;
    public static volatile SingularAttribute<TblRoles, Integer> idrol;
    public static volatile SingularAttribute<TblRoles, String> nombrerol;
    public static volatile ListAttribute<TblRoles, TblPersonas> tblPersonasList;
    public static volatile SingularAttribute<TblRoles, Integer> status;

}