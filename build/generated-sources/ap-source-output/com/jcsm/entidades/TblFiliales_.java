package com.jcsm.entidades;

import com.jcsm.entidades.TblFilialservicio;
import com.jcsm.entidades.TblMunicipios;
import com.jcsm.entidades.TblPersonas;
import com.jcsm.entidades.TblTurnos;
import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2022-07-04T08:42:18")
@StaticMetamodel(TblFiliales.class)
public class TblFiliales_ { 

    public static volatile SingularAttribute<TblFiliales, Float> latitud;
    public static volatile SingularAttribute<TblFiliales, String> direccion;
    public static volatile ListAttribute<TblFiliales, TblTurnos> tblTurnosList;
    public static volatile SingularAttribute<TblFiliales, String> nombrefilial;
    public static volatile SingularAttribute<TblFiliales, String> horariosemana;
    public static volatile SingularAttribute<TblFiliales, Float> longitud;
    public static volatile SingularAttribute<TblFiliales, Integer> idfilial;
    public static volatile SingularAttribute<TblFiliales, String> correo;
    public static volatile ListAttribute<TblFiliales, TblFilialservicio> tblFilialservicioList;
    public static volatile ListAttribute<TblFiliales, TblPersonas> tblPersonasList;
    public static volatile SingularAttribute<TblFiliales, TblMunicipios> idmunicipio;
    public static volatile SingularAttribute<TblFiliales, String> telefono;
    public static volatile SingularAttribute<TblFiliales, String> horariofinsemana;

}