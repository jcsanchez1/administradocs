package com.jcsm.entidades.seguridad;

import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2022-07-04T08:42:18")
@StaticMetamodel(TblIntentoslogin.class)
public class TblIntentoslogin_ { 

    public static volatile SingularAttribute<TblIntentoslogin, Integer> correcto;
    public static volatile SingularAttribute<TblIntentoslogin, Integer> idintento;
    public static volatile SingularAttribute<TblIntentoslogin, Date> fechacreacion;
    public static volatile SingularAttribute<TblIntentoslogin, String> correo;
    public static volatile SingularAttribute<TblIntentoslogin, Integer> fallido;

}