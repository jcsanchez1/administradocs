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
@Table(name = "tbl_bitacora")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "TblBitacora.findAll", query = "SELECT t FROM TblBitacora t")
    , @NamedQuery(name = "TblBitacora.findByIdbitacora", query = "SELECT t FROM TblBitacora t WHERE t.idbitacora = :idbitacora")
    , @NamedQuery(name = "TblBitacora.findByFechacreacion", query = "SELECT t FROM TblBitacora t WHERE t.fechacreacion = :fechacreacion")
    , @NamedQuery(name = "TblBitacora.findByExecutedSQL", query = "SELECT t FROM TblBitacora t WHERE t.executedSQL = :executedSQL")
    , @NamedQuery(name = "TblBitacora.findByReverseSQL", query = "SELECT t FROM TblBitacora t WHERE t.reverseSQL = :reverseSQL")
    , @NamedQuery(name = "TblBitacora.findByIpcliente", query = "SELECT t FROM TblBitacora t WHERE t.ipcliente = :ipcliente")
    , @NamedQuery(name = "TblBitacora.findByUsuariosistema", query = "SELECT t FROM TblBitacora t WHERE t.usuariosistema = :usuariosistema")
    , @NamedQuery(name = "TblBitacora.findByTabla", query = "SELECT t FROM TblBitacora t WHERE t.tabla = :tabla")
    , @NamedQuery(name = "TblBitacora.findByAccion", query = "SELECT t FROM TblBitacora t WHERE t.accion = :accion")})
public class TblBitacora implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "idbitacora")
    private Integer idbitacora;
    @Basic(optional = false)
    @NotNull
    @Column(name = "fechacreacion")
    @Temporal(TemporalType.DATE)
    private Date fechacreacion;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 2000)
    @Column(name = "executedSQL")
    private String executedSQL;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 2000)
    @Column(name = "reverseSQL")
    private String reverseSQL;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 50)
    @Column(name = "ipcliente")
    private String ipcliente;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 50)
    @Column(name = "usuariosistema")
    private String usuariosistema;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 50)
    @Column(name = "tabla")
    private String tabla;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 50)
    @Column(name = "accion")
    private String accion;

    public TblBitacora() {
    }

    public TblBitacora(Integer idbitacora) {
        this.idbitacora = idbitacora;
    }

    public TblBitacora(Integer idbitacora, Date fechacreacion, String executedSQL, String reverseSQL, String ipcliente, String usuariosistema, String tabla, String accion) {
        this.idbitacora = idbitacora;
        this.fechacreacion = fechacreacion;
        this.executedSQL = executedSQL;
        this.reverseSQL = reverseSQL;
        this.ipcliente = ipcliente;
        this.usuariosistema = usuariosistema;
        this.tabla = tabla;
        this.accion = accion;
    }

    public Integer getIdbitacora() {
        return idbitacora;
    }

    public void setIdbitacora(Integer idbitacora) {
        this.idbitacora = idbitacora;
    }

    public Date getFechacreacion() {
        return fechacreacion;
    }

    public void setFechacreacion(Date fechacreacion) {
        this.fechacreacion = fechacreacion;
    }

    public String getExecutedSQL() {
        return executedSQL;
    }

    public void setExecutedSQL(String executedSQL) {
        this.executedSQL = executedSQL;
    }

    public String getReverseSQL() {
        return reverseSQL;
    }

    public void setReverseSQL(String reverseSQL) {
        this.reverseSQL = reverseSQL;
    }

    public String getIpcliente() {
        return ipcliente;
    }

    public void setIpcliente(String ipcliente) {
        this.ipcliente = ipcliente;
    }

    public String getUsuariosistema() {
        return usuariosistema;
    }

    public void setUsuariosistema(String usuariosistema) {
        this.usuariosistema = usuariosistema;
    }

    public String getTabla() {
        return tabla;
    }

    public void setTabla(String tabla) {
        this.tabla = tabla;
    }

    public String getAccion() {
        return accion;
    }

    public void setAccion(String accion) {
        this.accion = accion;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idbitacora != null ? idbitacora.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof TblBitacora)) {
            return false;
        }
        TblBitacora other = (TblBitacora) object;
        if ((this.idbitacora == null && other.idbitacora != null) || (this.idbitacora != null && !this.idbitacora.equals(other.idbitacora))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.jcsm.entidades.seguridad.TblBitacora[ idbitacora=" + idbitacora + " ]";
    }
    
}
