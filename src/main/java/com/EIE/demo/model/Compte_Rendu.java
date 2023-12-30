package com.EIE.demo.model;

import org.omg.CORBA.DATA_CONVERSION;
import org.springframework.data.annotation.PersistenceConstructor;

import javax.persistence.*;
import java.math.BigDecimal;
import java.util.Date;

@Entity
@Table(name = "COMPTE_RENDU"/*, schema = "AEB"*/)
public class Compte_Rendu {

    @Id
    @GeneratedValue
    @Column(name = "CR_ID", nullable = false)
    private Long crId;

    @Column(name = "REF_CR", nullable = false, length = 50)
    private String refCr;

    @Column(name = "REF_OM", nullable = false, length = 50)
    private String refOm;

    @Column(name = "NUM_SISMAT", nullable = false, length = 50)
    private String num_sismat;

    @Column(name = "NUM_FACTURE_M14", nullable = false, length = 50)
    private String num_facture_M14 ;

    @Column(name = "NUM_BON_MAT1", nullable = false, length = 50)
    private String num_bonMat1 ;

    @Column(name = "DATE_CR", nullable = false, length = 50)
    private Date dateCr ;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "UNITE_GESTION")
    private UnitesCriblees uniteGestion;




    // Constructors, getters, and setters
    private String value;

    @PersistenceConstructor
    public Compte_Rendu(String value) {
        this.crId =  Long.parseLong(value);
    }
    public Compte_Rendu() {
        // Constructeur par défaut (sans paramètres)
    }

    public Long getCrId() {
        return crId;
    }

    public void setCrId(Long crId) {
        this.crId = crId;
    }

    public String getRefCr() {
        return refCr;
    }

    public void setRefCr(String refCr) {
        this.refCr = refCr;
    }

    public String getRefOm() {
        return refOm;
    }

    public void setRefOm(String refOm) {
        this.refOm = refOm;
    }

    public String getNum_sismat() {
        return num_sismat;
    }

    public void setNum_sismat(String num_sismat) {
        this.num_sismat = num_sismat;
    }

    public String getNum_facture_M14() {
        return num_facture_M14;
    }

    public void setNum_facture_M14(String num_facture_M14) {
        this.num_facture_M14 = num_facture_M14;
    }

    public String getNum_bonMat1() {
        return num_bonMat1;
    }

    public void setNum_bonMat1(String num_bonMat1) {
        this.num_bonMat1 = num_bonMat1;
    }

    public UnitesCriblees getUniteGestion() {
        return uniteGestion;
    }

    public void setUniteGestion(UnitesCriblees uniteGestion) {
        this.uniteGestion = uniteGestion;
    }

    public String getValue() {
        return value;
    }

    public void setValue(String value) {
        this.value = value;
    }

    public Date getDateCr() {
        return dateCr;
    }

    public void setDateCr(Date dateCr) {
        this.dateCr = dateCr;
    }
}

