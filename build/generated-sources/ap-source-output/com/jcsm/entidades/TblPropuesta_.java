package com.jcsm.entidades;

import com.jcsm.entidades.TblOpcionespropuesta;
import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2022-07-04T08:42:18")
@StaticMetamodel(TblPropuesta.class)
public class TblPropuesta_ { 

    public static volatile SingularAttribute<TblPropuesta, Integer> estado;
    public static volatile SingularAttribute<TblPropuesta, Integer> idpropuesta;
    public static volatile SingularAttribute<TblPropuesta, String> propuesta;
    public static volatile SingularAttribute<TblPropuesta, Date> fechacreacion;
    public static volatile ListAttribute<TblPropuesta, TblOpcionespropuesta> tblOpcionespropuestaList;

}