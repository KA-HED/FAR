package com.EIE.demo.model;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "OM", schema = "AEB")
public class OM {

    @Id
    @Column(name = "OM_ID", nullable = false)
    private Long omId;

    @Column(name = "REF_OM", nullable = false, length = 200)
    private String refOM;

    @Column(name = "DATE_OM", nullable = false)
    private Date dateOM;

    @Column(name = "DEGRE_URG", length = 1)
    private String degreUrg;

    @Column(name = "TRAC_OM", nullable = false, length = 2)
    private String tracOM;

    @Column(name = "TYPE_OM", nullable = false, length = 2)
    private String typeOM;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "ACT_ORDRE")
    private Acteur actOrdre;

    @Column(name = "DATE_ORDRE")
    private Date dateOrdre;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "ACT_RECEPTION")
    private Acteur actReception;

    @Column(name = "DATE_RECEPTION", length = 10)
    private String dateReception;

//    @Column(name = "TO", length = 10)
//    private String to;

    @Column(name = "DGMAC", length = 10)
    private String dgmac;

    @Column(name = "N_OM", length = 10)
        private String nOM;

    @Column(name = "S", length = 4)
    private String s;

    @Column(name = "N_TO", length = 10)
    private String nTO;

    @Column(name = "ZONE", length = 20)
    private String zone;

    // Constructors, getters, and setters

    public Long getOmId() {
        return omId;
    }

    public void setOmId(Long omId) {
        this.omId = omId;
    }

    public String getRefOM() {
        return refOM;
    }

    public void setRefOM(String refOM) {
        this.refOM = refOM;
    }

    public Date getDateOM() {
        return dateOM;
    }

    public void setDateOM(Date dateOM) {
        this.dateOM = dateOM;
    }

    public String getDegreUrg() {
        return degreUrg;
    }

    public void setDegreUrg(String degreUrg) {
        this.degreUrg = degreUrg;
    }

    public String getTracOM() {
        return tracOM;
    }

    public void setTracOM(String tracOM) {
        this.tracOM = tracOM;
    }

    public String getTypeOM() {
        return typeOM;
    }

    public void setTypeOM(String typeOM) {
        this.typeOM = typeOM;
    }

    public Acteur getActOrdre() {
        return actOrdre;
    }

    public void setActOrdre(Acteur actOrdre) {
        this.actOrdre = actOrdre;
    }

    public Acteur getActReception() {
        return actReception;
    }

    public void setActReception(Acteur actReception) {
        this.actReception = actReception;
    }

    public Date getDateOrdre() {
        return dateOrdre;
    }

    public void setDateOrdre(Date dateOrdre) {
        this.dateOrdre = dateOrdre;
    }

    public String getDateReception() {
        return dateReception;
    }

    public void setDateReception(String dateReception) {
        this.dateReception = dateReception;
    }

//    public String getTo() {
//        return to;
//    }
//
//    public void setTo(String to) {
//        this.to = to;
//    }

    public String getDgmac() {
        return dgmac;
    }

    public void setDgmac(String dgmac) {
        this.dgmac = dgmac;
    }

    public String getnOM() {
        return nOM;
    }

    public void setnOM(String nOM) {
        this.nOM = nOM;
    }

    public String getS() {
        return s;
    }

    public void setS(String s) {
        this.s = s;
    }

    public String getnTO() {
        return nTO;
    }

    public void setnTO(String nTO) {
        this.nTO = nTO;
    }

    public String getZone() {
        return zone;
    }

    public void setZone(String zone) {
        this.zone = zone;
    }
}
