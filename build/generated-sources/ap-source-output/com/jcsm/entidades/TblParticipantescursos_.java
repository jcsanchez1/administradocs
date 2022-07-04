package com.jcsm.entidades;

import com.jcsm.entidades.TblCertificaciones;
import com.jcsm.entidades.TblCursos;
import com.jcsm.entidades.TblPersonas;
import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2022-07-04T08:42:18")
@StaticMetamodel(TblParticipantescursos.class)
public class TblParticipantescursos_ { 

    public static volatile SingularAttribute<TblParticipantescursos, Integer> curparid;
    public static volatile SingularAttribute<TblParticipantescursos, Integer> estado;
    public static volatile SingularAttribute<TblParticipantescursos, Date> fechacreacion;
    public static volatile ListAttribute<TblParticipantescursos, TblCertificaciones> tblCertificacionesList;
    public static volatile SingularAttribute<TblParticipantescursos, TblCursos> cursoid;
    public static volatile SingularAttribute<TblParticipantescursos, TblPersonas> personaid;

}