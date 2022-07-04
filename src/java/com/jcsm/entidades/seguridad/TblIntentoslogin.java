/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.jcsm.entidades.seguridad;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author juanc
 */
@Entity
@Table(name = "tbl_intentoslogin")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "TblIntentoslogin.findAll", query = "SELECT t FROM TblIntentoslogin t")
    , @NamedQuery(name = "TblIntentoslogin.findByIdintento", query = "SELECT t FROM TblIntentoslogin t WHERE t.idintento = :idintento")
    , @NamedQuery(name = "TblIntentoslogin.findByCorreo", query = "SELECT t FROM TblIntentoslogin t WHERE t.correo = :correo")
    , @NamedQuery(name = "TblIntentoslogin.findByFechacreacion", query = "SELECT t FROM TblIntentoslogin t WHERE t.fechacreacion = :fechacreacion")
    , @NamedQuery(name = "TblIntentoslogin.findByCorrecto", query = "SELECT t FROM TblIntentoslogin t WHERE t.correcto = :correcto")
    , @NamedQuery(name = "TblIntentoslogin.findByFallido", query = "SELECT t FROM TblIntentoslogin t WHERE t.fallido = :fallido")})
public class TblIntentoslogin implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "idintento")
    private Integer idintento;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 255)
    @Column(name = "correo")
    private String correo;
    @Basic(optional = false)
    @NotNull
    @Column(name = "fechacreacion")
    @Temporal(TemporalType.DATE)
    private Date fechacreacion;
    @Basic(optional = false)
    @NotNull
    @Column(name = "correcto")
    private int correcto;
    @Basic(optional = false)
    @NotNull
    @Column(name = "fallido")
    private int fallido;

    public TblIntentoslogin() {
    }

    public TblIntentoslogin(Integer idintento) {
        this.idintento = idintento;
    }

    public TblIntentoslogin(Integer idintento, String correo, Date fechacreacion, int correcto, int fallido) {
        this.idintento = idintento;
        this.correo = correo;
        this.fechacreacion = fechacreacion;
        this.correcto = correcto;
        this.fallido = fallido;
    }

    public Integer getIdintento() {
        return idintento;
    }

    public void setIdintento(Integer idintento) {
        this.idintento = idintento;
    }

    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

    public Date getFechacreacion() {
        return fechacreacion;
    }

    public void setFechacreacion(Date fechacreacion) {
        this.fechacreacion = fechacreacion;
    }

    public int getCorrecto() {
        return correcto;
    }

    public void setCorrecto(int correcto) {
        this.correcto = correcto;
    }

    public int getFallido() {
        return fallido;
    }

    public void setFallido(int fallido) {
        this.fallido = fallido;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idintento != null ? idintento.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof TblIntentoslogin)) {
            return false;
        }
        TblIntentoslogin other = (TblIntentoslogin) object;
        if ((this.idintento == null && other.idintento != null) || (this.idintento != null && !this.idintento.equals(other.idintento))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.jcsm.entidades.seguridad.TblIntentoslogin[ idintento=" + idintento + " ]";
    }
    
}
