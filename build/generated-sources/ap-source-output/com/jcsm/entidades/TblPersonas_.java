package com.jcsm.entidades;

import com.jcsm.entidades.TblAlertas;
import com.jcsm.entidades.TblAsistencia;
import com.jcsm.entidades.TblCondicionpersona;
import com.jcsm.entidades.TblFiliales;
import com.jcsm.entidades.TblParticipantescursos;
import com.jcsm.entidades.TblRoles;
import com.jcsm.entidades.TblTurnos;
import com.jcsm.entidades.TblVotospersona;
import com.jcsm.entidades.TlbEmpleadopuesto;
import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2022-07-04T08:42:18")
@StaticMetamodel(TblPersonas.class)
public class TblPersonas_ { 

    public static volatile SingularAttribute<TblPersonas, Integer> estado;
    public static volatile SingularAttribute<TblPersonas, TblRoles> idrol;
    public static volatile ListAttribute<TblPersonas, TblAsistencia> tblAsistenciaList;
    public static volatile ListAttribute<TblPersonas, TlbEmpleadopuesto> tlbEmpleadopuestoList;
    public static volatile ListAttribute<TblPersonas, TblVotospersona> tblVotospersonaList;
    public static volatile ListAttribute<TblPersonas, TblTurnos> tblTurnosList;
    public static volatile SingularAttribute<TblPersonas, String> nombre;
    public static volatile ListAttribute<TblPersonas, TblAlertas> tblAlertasList;
    public static volatile SingularAttribute<TblPersonas, String> password;
    public static volatile SingularAttribute<TblPersonas, TblCondicionpersona> tblCondicionpersona;
    public static volatile ListAttribute<TblPersonas, TblParticipantescursos> tblParticipantescursosList;
    public static volatile SingularAttribute<TblPersonas, Date> fechacreacion;
    public static volatile SingularAttribute<TblPersonas, Date> fechamodificacion;
    public static volatile SingularAttribute<TblPersonas, Date> fechanacimiento;
    public static volatile SingularAttribute<TblPersonas, String> foto;
    public static volatile SingularAttribute<TblPersonas, String> apellido;
    public static volatile SingularAttribute<TblPersonas, String> genero;
    public static volatile SingularAttribute<TblPersonas, String> tokenRecovery;
    public static volatile SingularAttribute<TblPersonas, Long> idafiliacion;
    public static volatile SingularAttribute<TblPersonas, Integer> id;
    public static volatile SingularAttribute<TblPersonas, Integer> telefono;
    public static volatile SingularAttribute<TblPersonas, String> email;
    public static volatile SingularAttribute<TblPersonas, TblFiliales> idFilial;

}