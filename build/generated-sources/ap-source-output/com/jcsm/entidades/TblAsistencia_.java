package com.jcsm.entidades;

import com.jcsm.entidades.TblCursos;
import com.jcsm.entidades.TblPersonas;
import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2022-07-04T08:42:18")
@StaticMetamodel(TblAsistencia.class)
public class TblAsistencia_ { 

    public static volatile SingularAttribute<TblAsistencia, Integer> estado;
    public static volatile SingularAttribute<TblAsistencia, Integer> idasistencia;
    public static volatile SingularAttribute<TblAsistencia, Date> fechacreacion;
    public static volatile SingularAttribute<TblAsistencia, TblPersonas> tblapersona;
    public static volatile SingularAttribute<TblAsistencia, TblCursos> tblcurso;

}