package com.jcsm.entidades;

import com.jcsm.entidades.TblOpcionespropuesta;
import com.jcsm.entidades.TblPersonas;
import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2022-07-04T08:42:18")
@StaticMetamodel(TblVotospersona.class)
public class TblVotospersona_ { 

    public static volatile SingularAttribute<TblVotospersona, Integer> estado;
    public static volatile SingularAttribute<TblVotospersona, Date> fechacreacion;
    public static volatile SingularAttribute<TblVotospersona, TblPersonas> idpersona;
    public static volatile SingularAttribute<TblVotospersona, Integer> idvoto;
    public static volatile SingularAttribute<TblVotospersona, TblOpcionespropuesta> idopcion;

}