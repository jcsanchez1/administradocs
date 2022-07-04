package com.jcsm.entidades;

import com.jcsm.entidades.TblDepartamentos;
import com.jcsm.entidades.TblFiliales;
import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2022-07-04T08:42:18")
@StaticMetamodel(TblMunicipios.class)
public class TblMunicipios_ { 

    public static volatile SingularAttribute<TblMunicipios, String> codigomunicipio;
    public static volatile SingularAttribute<TblMunicipios, String> municipio;
    public static volatile ListAttribute<TblMunicipios, TblFiliales> tblFilialesList;
    public static volatile SingularAttribute<TblMunicipios, TblDepartamentos> iddepto;
    public static volatile SingularAttribute<TblMunicipios, Integer> idtblMunicipios;

}