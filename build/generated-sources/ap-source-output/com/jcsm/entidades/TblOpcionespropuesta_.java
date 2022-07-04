package com.jcsm.entidades;

import com.jcsm.entidades.TblPropuesta;
import com.jcsm.entidades.TblVotospersona;
import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2022-07-04T08:42:18")
@StaticMetamodel(TblOpcionespropuesta.class)
public class TblOpcionespropuesta_ { 

    public static volatile SingularAttribute<TblOpcionespropuesta, Integer> estado;
    public static volatile SingularAttribute<TblOpcionespropuesta, String> opcion;
    public static volatile SingularAttribute<TblOpcionespropuesta, Date> fechacreacion;
    public static volatile SingularAttribute<TblOpcionespropuesta, TblPropuesta> idpropuesta;
    public static volatile ListAttribute<TblOpcionespropuesta, TblVotospersona> tblVotospersonaList;
    public static volatile SingularAttribute<TblOpcionespropuesta, Integer> idopcion;

}