package com.jcsm.entidades;

import com.jcsm.entidades.TblFiliales;
import com.jcsm.entidades.TblFilialservicioPK;
import com.jcsm.entidades.TblServicios;
import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2022-07-04T08:42:18")
@StaticMetamodel(TblFilialservicio.class)
public class TblFilialservicio_ { 

    public static volatile SingularAttribute<TblFilialservicio, Integer> estado;
    public static volatile SingularAttribute<TblFilialservicio, Date> fechacreacion;
    public static volatile SingularAttribute<TblFilialservicio, TblFiliales> tblFiliales;
    public static volatile SingularAttribute<TblFilialservicio, TblServicios> tblServicios;
    public static volatile SingularAttribute<TblFilialservicio, TblFilialservicioPK> tblFilialservicioPK;

}