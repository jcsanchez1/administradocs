package com.jcsm.entidades;

import com.jcsm.entidades.TblAsignacionturno;
import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2022-07-04T08:42:18")
@StaticMetamodel(TblFeedbackturno.class)
public class TblFeedbackturno_ { 

    public static volatile SingularAttribute<TblFeedbackturno, Integer> idfeedback;
    public static volatile SingularAttribute<TblFeedbackturno, Integer> calificacion;
    public static volatile SingularAttribute<TblFeedbackturno, Integer> estado;
    public static volatile SingularAttribute<TblFeedbackturno, Date> fechacreacion;
    public static volatile SingularAttribute<TblFeedbackturno, TblAsignacionturno> idasignacion;

}