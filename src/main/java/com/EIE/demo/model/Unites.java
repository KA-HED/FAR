package com.EIE.demo.model;
import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "UNITES", schema = "GEST_REP")
public class Unites {

    @Id
    @Column(name = "CODE_UNITE", nullable = false)
    private String codeUnite;

    @Column(name = "CODE_UNITE_ST")
    private String codeUniteSt;

    @Column(name = "REF_TED")
    private String refTed;

    @Column(name = "CODE_INSP", nullable = false)
    private String codeInsp;

    @Column(name = "DESIG_UNITE")
    private String desigUnite;

    @Column(name = "OBS")
    private String obs;

    @Column(name = "ARME", length = 15)
    private String arme;

    @Column(name = "LIEU", length = 25)
    private String lieu;

    @Column(name = "ECHELON", length = 1)
    private String echelon;

    @Column(name = "DT_DISSOU")
    private Date dtDissou;

    @Column(name = "ZONE", length = 4)
    private String zone;

    @Column(name = "DESIG_ABR")
    private String desigAbr;

    @Column(name = "STOCKAGE", length = 1)
    private String stockage;

    // Getters and setters for the fields (omitted for brevity)

    // You can also include constructors and additional methods as needed

    public String getCodeUnite() {
        return codeUnite;
    }

    public void setCodeUnite(String codeUnite) {
        this.codeUnite = codeUnite;
    }

    public String getCodeUniteSt() {
        return codeUniteSt;
    }

    public void setCodeUniteSt(String codeUniteSt) {
        this.codeUniteSt = codeUniteSt;
    }

    public String getRefTed() {
        return refTed;
    }

    public void setRefTed(String refTed) {
        this.refTed = refTed;
    }

    public String getCodeInsp() {
        return codeInsp;
    }

    public void setCodeInsp(String codeInsp) {
        this.codeInsp = codeInsp;
    }

    public String getDesigUnite() {
        return desigUnite;
    }

    public void setDesigUnite(String desigUnite) {
        this.desigUnite = desigUnite;
    }

    public String getObs() {
        return obs;
    }

    public void setObs(String obs) {
        this.obs = obs;
    }

    public String getArme() {
        return arme;
    }

    public void setArme(String arme) {
        this.arme = arme;
    }

    public String getLieu() {
        return lieu;
    }

    public void setLieu(String lieu) {
        this.lieu = lieu;
    }

    public String getEchelon() {
        return echelon;
    }

    public void setEchelon(String echelon) {
        this.echelon = echelon;
    }

    public Date getDtDissou() {
        return dtDissou;
    }

    public void setDtDissou(Date dtDissou) {
        this.dtDissou = dtDissou;
    }

    public String getZone() {
        return zone;
    }

    public void setZone(String zone) {
        this.zone = zone;
    }

    public String getDesigAbr() {
        return desigAbr;
    }

    public void setDesigAbr(String desigAbr) {
        this.desigAbr = desigAbr;
    }

    public String getStockage() {
        return stockage;
    }

    public void setStockage(String stockage) {
        this.stockage = stockage;
    }
}
