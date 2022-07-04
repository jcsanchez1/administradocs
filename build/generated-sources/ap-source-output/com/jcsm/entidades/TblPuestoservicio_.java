package com.jcsm.entidades;

import com.jcsm.entidades.TblAsignacionturno;
import com.jcsm.entidades.TblServicios;
import com.jcsm.entidades.TlbEmpleadopuesto;
import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2022-07-04T08:42:18")
@StaticMetamodel(TblPuestoservicio.class)
public class TblPuestoservicio_ { 

    public static volatile SingularAttribute<TblPuestoservicio, Integer> idpuesto;
    public static volatile SingularAttribute<TblPuestoservicio, Integer> estado;
    public static volatile SingularAttribute<TblPuestoservicio, Date> fechacreacion;
    public static volatile ListAttribute<TblPuestoservicio, TblAsignacionturno> tblAsignacionturnoList;
    public static volatile SingularAttribute<TblPuestoservicio, Integer> numeroventanilla;
    public static volatile ListAttribute<TblPuestoservicio, TlbEmpleadopuesto> tlbEmpleadopuestoList;
    public static volatile SingularAttribute<TblPuestoservicio, TblServicios> idservicio;

}