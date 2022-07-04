package com.jcsm.entidades;

import com.jcsm.entidades.TblCursos;
import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2022-07-04T08:42:18")
@StaticMetamodel(TblInstructores.class)
public class TblInstructores_ { 

    public static volatile SingularAttribute<TblInstructores, Integer> instid;
    public static volatile SingularAttribute<TblInstructores, Integer> estado;
    public static volatile ListAttribute<TblInstructores, TblCursos> tblCursosList;
    public static volatile SingularAttribute<TblInstructores, Date> fechanacimiento;
    public static volatile SingularAttribute<TblInstructores, Date> fechacreacion;
    public static volatile SingularAttribute<TblInstructores, String> apellido;
    public static volatile SingularAttribute<TblInstructores, String> correo;
    public static volatile SingularAttribute<TblInstructores, String> genero;
    public static volatile SingularAttribute<TblInstructores, String> identidad;
    public static volatile SingularAttribute<TblInstructores, String> telefono;
    public static volatile SingularAttribute<TblInstructores, String> nombre;

}