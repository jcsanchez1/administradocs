package com.jcsm.entidades;

import com.jcsm.entidades.TblAsistencia;
import com.jcsm.entidades.TblCategoriacursos;
import com.jcsm.entidades.TblCertificaciones;
import com.jcsm.entidades.TblInstructores;
import com.jcsm.entidades.TblParticipantescursos;
import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2022-07-04T08:42:18")
@StaticMetamodel(TblCursos.class)
public class TblCursos_ { 

    public static volatile SingularAttribute<TblCursos, String> descripcion;
    public static volatile SingularAttribute<TblCursos, Integer> estado;
    public static volatile ListAttribute<TblCursos, TblCertificaciones> tblCertificacionesList;
    public static volatile ListAttribute<TblCursos, TblAsistencia> tblAsistenciaList;
    public static volatile SingularAttribute<TblCursos, String> imagen;
    public static volatile SingularAttribute<TblCursos, Date> fechafinal;
    public static volatile SingularAttribute<TblCursos, Integer> nombrecurso;
    public static volatile SingularAttribute<TblCursos, String> url;
    public static volatile SingularAttribute<TblCursos, TblCategoriacursos> categoriaid;
    public static volatile SingularAttribute<TblCursos, Date> fechainicio;
    public static volatile SingularAttribute<TblCursos, TblInstructores> instid;
    public static volatile SingularAttribute<TblCursos, Integer> curid;
    public static volatile ListAttribute<TblCursos, TblParticipantescursos> tblParticipantescursosList;
    public static volatile SingularAttribute<TblCursos, Date> fechacreacion;
    public static volatile SingularAttribute<TblCursos, Integer> dependenciaid;

}