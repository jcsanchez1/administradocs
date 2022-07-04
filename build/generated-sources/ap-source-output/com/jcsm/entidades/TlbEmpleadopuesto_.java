package com.jcsm.entidades;

import com.jcsm.entidades.TblPersonas;
import com.jcsm.entidades.TblPuestoservicio;
import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2022-07-04T08:42:18")
@StaticMetamodel(TlbEmpleadopuesto.class)
public class TlbEmpleadopuesto_ { 

    public static volatile SingularAttribute<TlbEmpleadopuesto, TblPuestoservicio> idpuesto;
    public static volatile SingularAttribute<TlbEmpleadopuesto, Integer> estado;
    public static volatile SingularAttribute<TlbEmpleadopuesto, Integer> idempleadopuesto;
    public static volatile SingularAttribute<TlbEmpleadopuesto, Date> fechacreacion;
    public static volatile SingularAttribute<TlbEmpleadopuesto, TblPersonas> idpersona;

}