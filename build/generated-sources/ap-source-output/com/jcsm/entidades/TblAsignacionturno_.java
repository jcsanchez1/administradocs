package com.jcsm.entidades;

import com.jcsm.entidades.TblFeedbackturno;
import com.jcsm.entidades.TblPuestoservicio;
import com.jcsm.entidades.TblTurnos;
import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2022-07-04T08:42:18")
@StaticMetamodel(TblAsignacionturno.class)
public class TblAsignacionturno_ { 

    public static volatile SingularAttribute<TblAsignacionturno, TblPuestoservicio> idpuesto;
    public static volatile SingularAttribute<TblAsignacionturno, Integer> estado;
    public static volatile SingularAttribute<TblAsignacionturno, Date> fechainicioatencion;
    public static volatile SingularAttribute<TblAsignacionturno, Date> fechafinalatencion;
    public static volatile SingularAttribute<TblAsignacionturno, TblTurnos> idturno;
    public static volatile ListAttribute<TblAsignacionturno, TblFeedbackturno> tblFeedbackturnoList;
    public static volatile SingularAttribute<TblAsignacionturno, Integer> idasignacion;

}