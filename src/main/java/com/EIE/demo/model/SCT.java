package com.EIE.demo.model;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Column;
import javax.persistence.Table;

@Entity
@Table(name = "SCT", schema = "AEB")
public class SCT {

    @Id
    @Column(name = "SCT_ID", nullable = false)
    private Long sctId;

    @Column(name = "VILLE_ID")
    private Long villeId;

    @Column(name = "NOM_SCT", nullable = false, length = 60)
    private String nomSCT;

    @Column(name = "TEL_SCT", length = 12)
    private String telSCT;

    @Column(name = "ADR_SCT", length = 100)
    private String adrSCT;

    @Column(name = "EMAIL_SCT", length = 30)
    private String emailSCT;

    @Column(name = "WWW_SCT", length = 50)
    private String wwwSCT;

    @Column(name = "FAX_SCT", length = 12)
    private String faxSCT;

    @Column(name = "TYPE_SOCIETE", length = 1)
    private String typeSociete;

    // Constructors, getters, and setters

    public Long getSctId() {
        return sctId;
    }

    public void setSctId(Long sctId) {
        this.sctId = sctId;
    }

    public Long getVilleId() {
        return villeId;
    }

    public void setVilleId(Long villeId) {
        this.villeId = villeId;
    }

    public String getNomSCT() {
        return nomSCT;
    }

    public void setNomSCT(String nomSCT) {
        this.nomSCT = nomSCT;
    }

    public String getTelSCT() {
        return telSCT;
    }

    public void setTelSCT(String telSCT) {
        this.telSCT = telSCT;
    }

    public String getAdrSCT() {
        return adrSCT;
    }

    public void setAdrSCT(String adrSCT) {
        this.adrSCT = adrSCT;
    }

    public String getEmailSCT() {
        return emailSCT;
    }

    public void setEmailSCT(String emailSCT) {
        this.emailSCT = emailSCT;
    }

    public String getWwwSCT() {
        return wwwSCT;
    }

    public void setWwwSCT(String wwwSCT) {
        this.wwwSCT = wwwSCT;
    }

    public String getFaxSCT() {
        return faxSCT;
    }

    public void setFaxSCT(String faxSCT) {
        this.faxSCT = faxSCT;
    }

    public String getTypeSociete() {
        return typeSociete;
    }

    public void setTypeSociete(String typeSociete) {
        this.typeSociete = typeSociete;
    }
}
