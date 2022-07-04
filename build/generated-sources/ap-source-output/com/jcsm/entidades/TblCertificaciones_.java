package com.jcsm.entidades;

import com.jcsm.entidades.TblCursos;
import com.jcsm.entidades.TblParticipantescursos;
import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2022-07-04T08:42:18")
@StaticMetamodel(TblCertificaciones.class)
public class TblCertificaciones_ { 

    public static volatile SingularAttribute<TblCertificaciones, TblParticipantescursos> curparid;
    public static volatile SingularAttribute<TblCertificaciones, Integer> estado;
    public static volatile SingularAttribute<TblCertificaciones, Date> fechacreacion;
    public static volatile SingularAttribute<TblCertificaciones, TblCursos> idcurso;
    public static volatile SingularAttribute<TblCertificaciones, Integer> idcertificacion;

}