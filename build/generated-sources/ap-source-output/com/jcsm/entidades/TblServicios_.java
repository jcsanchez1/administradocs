package com.jcsm.entidades;

import com.jcsm.entidades.TblFilialservicio;
import com.jcsm.entidades.TblPuestoservicio;
import com.jcsm.entidades.TblSubservicios;
import com.jcsm.entidades.TblTurnos;
import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2022-07-04T08:42:18")
@StaticMetamodel(TblServicios.class)
public class TblServicios_ { 

    public static volatile SingularAttribute<TblServicios, Integer> estado;
    public static volatile ListAttribute<TblServicios, TblPuestoservicio> tblPuestoservicioList;
    public static volatile SingularAttribute<TblServicios, String> servicio;
    public static volatile ListAttribute<TblServicios, TblSubservicios> tblSubserviciosList;
    public static volatile SingularAttribute<TblServicios, Integer> idservicios;
    public static volatile ListAttribute<TblServicios, TblFilialservicio> tblFilialservicioList;
    public static volatile ListAttribute<TblServicios, TblTurnos> tblTurnosList;

}