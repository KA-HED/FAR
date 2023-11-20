package com.EIE.demo.model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.GeneratedValue;
import javax.persistence.Column;
import javax.persistence.Table;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import java.util.Date;

@Entity
@Table(name = "MAR", schema = "AEB")
public class Mar {

    @Id
    @GeneratedValue
    @Column(name = "MAR_ID", nullable = false)
    private Long marId;

    @Column(name = "DEVISE_ID")
    private Integer deviseId;

    @Column(name = "N_MAR", nullable = false, length = 18)
    private String nMar;

    @Column(name = "TP_MAR", nullable = false, length = 2)
    private String tpMar;

    @Column(name = "NAT_MAR", length = 20)
    private String natMar;

    @Column(name = "MONT_MAR")
    private Double montMar;

    @Column(name = "DELAI")
    private Long delai;

    @Column(name = "MONT_LIVRE_MAR")
    private Double montLivreMar;

    @Column(name = "DAT_NOTIF")
    private Date datNotif;

    @Column(name = "DAT_APPROB")
    private Date datApprob;

    @Column(name = "OBJ_MAR", length = 4000)
    private String objMar;

    @Column(name = "SOLDE")
    private Double solde;

    @Column(name = "EQUIV_MONT_MAR")
    private Double equivMontMar;

    @Column(name = "COURS")
    private Double cours;

    @Column(name = "MAR_MAR_ID")
    private Long marMarId;

    @ManyToOne
    @JoinColumn(name = "SCT_ID", referencedColumnName = "SCT_ID")
    private SCT sct;

    @Column(name = "UNT_ID")
    private Long untId;

    @Column(name = "ACT_SAISIE")
    private Long actSaisie;

    @Column(name = "DATE_SAISIE")
    private Date dateSaisie;

    // Constructors, getters, and setters

    public Long getMarId() {
        return marId;
    }

    public void setMarId(Long marId) {
        this.marId = marId;
    }

    public Integer getDeviseId() {
        return deviseId;
    }

    public void setDeviseId(Integer deviseId) {
        this.deviseId = deviseId;
    }

    public String getnMar() {
        return nMar;
    }

    public void setnMar(String nMar) {
        this.nMar = nMar;
    }

    public String getTpMar() {
        return tpMar;
    }

    public void setTpMar(String tpMar) {
        this.tpMar = tpMar;
    }

    public String getNatMar() {
        return natMar;
    }

    public void setNatMar(String natMar) {
        this.natMar = natMar;
    }

    public Double getMontMar() {
        return montMar;
    }

    public void setMontMar(Double montMar) {
        this.montMar = montMar;
    }

    public Long getDelai() {
        return delai;
    }

    public void setDelai(Long delai) {
        this.delai = delai;
    }

    public Double getMontLivreMar() {
        return montLivreMar;
    }

    public void setMontLivreMar(Double montLivreMar) {
        this.montLivreMar = montLivreMar;
    }

    public Date getDatNotif() {
        return datNotif;
    }

    public void setDatNotif(Date datNotif) {
        this.datNotif = datNotif;
    }

    public Date getDatApprob() {
        return datApprob;
    }

    public void setDatApprob(Date datApprob) {
        this.datApprob = datApprob;
    }

    public String getObjMar() {
        return objMar;
    }

    public void setObjMar(String objMar) {
        this.objMar = objMar;
    }

    public Double getSolde() {
        return solde;
    }

    public void setSolde(Double solde) {
        this.solde = solde;
    }

    public Double getEquivMontMar() {
        return equivMontMar;
    }

    public void setEquivMontMar(Double equivMontMar) {
        this.equivMontMar = equivMontMar;
    }

    public Double getCours() {
        return cours;
    }

    public void setCours(Double cours) {
        this.cours = cours;
    }

    public Long getMarMarId() {
        return marMarId;
    }

    public void setMarMarId(Long marMarId) {
        this.marMarId = marMarId;
    }

    public SCT getSct() {
        return sct;
    }

    public void setSct(SCT sct) {
        this.sct = sct;
    }

    public Long getUntId() {
        return untId;
    }

    public void setUntId(Long untId) {
        this.untId = untId;
    }

    public Long getActSaisie() {
        return actSaisie;
    }

    public void setActSaisie(Long actSaisie) {
        this.actSaisie = actSaisie;
    }

    public Date getDateSaisie() {
        return dateSaisie;
    }

    public void setDateSaisie(Date dateSaisie) {
        this.dateSaisie = dateSaisie;
    }
}
