package com.jcsm.entidades;

import com.jcsm.entidades.TblCursos;
import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2022-07-04T08:42:18")
@StaticMetamodel(TblCategoriacursos.class)
public class TblCategoriacursos_ { 

    public static volatile SingularAttribute<TblCategoriacursos, Integer> catid;
    public static volatile SingularAttribute<TblCategoriacursos, Integer> estado;
    public static volatile ListAttribute<TblCategoriacursos, TblCursos> tblCursosList;
    public static volatile SingularAttribute<TblCategoriacursos, Date> fechacreacion;
    public static volatile SingularAttribute<TblCategoriacursos, String> nombrecategoria;

}