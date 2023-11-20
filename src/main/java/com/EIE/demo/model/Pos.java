package com.EIE.demo.model;

import javax.persistence.*;

@Entity
@Table(name = "G_POS_ADMIN", schema = "GEST_REP")
public class Pos {

    @Id
    @Column(name = "POS_ID", nullable = false)
    private String posId;

    @Column(name = "DESIGN_POS", nullable = false)
    private String designPos;

    @Column(name = "CD_PERE")
    private String cdPere;

    @Column(name = "CD_PERE_GRP")
    private String cdPereGrp;

    @Column(name = "PONDER_PRIX", nullable = false, columnDefinition = "NUMBER(5,2) DEFAULT 100")
    private Double ponderPrix;

    @Column(name = "POS_ABREV", nullable = false)
    private String posAbrev;

    @Column(name = "CODE_ECA")
    private String codeEca;

    @Column(name = "CODE_INFO")
    private Long codeInfo;

    @Column(name = "CODE_B4")
    private String codeB4;

    @Column(name = "CODE_OPT")
    private Long codeOpt;

    // Getters and setters for the fields (omitted for brevity)

    // You can also include constructors and additional methods as needed

    public String getPosId() {
        return posId;
    }

    public void setPosId(String posId) {
        this.posId = posId;
    }

    public String getDesignPos() {
        return designPos;
    }

    public void setDesignPos(String designPos) {
        this.designPos = designPos;
    }

    public String getCdPere() {
        return cdPere;
    }

    public void setCdPere(String cdPere) {
        this.cdPere = cdPere;
    }

    public String getCdPereGrp() {
        return cdPereGrp;
    }

    public void setCdPereGrp(String cdPereGrp) {
        this.cdPereGrp = cdPereGrp;
    }

    public Double getPonderPrix() {
        return ponderPrix;
    }

    public void setPonderPrix(Double ponderPrix) {
        this.ponderPrix = ponderPrix;
    }

    public String getPosAbrev() {
        return posAbrev;
    }

    public void setPosAbrev(String posAbrev) {
        this.posAbrev = posAbrev;
    }

    public String getCodeEca() {
        return codeEca;
    }

    public void setCodeEca(String codeEca) {
        this.codeEca = codeEca;
    }

    public Long getCodeInfo() {
        return codeInfo;
    }

    public void setCodeInfo(Long codeInfo) {
        this.codeInfo = codeInfo;
    }

    public String getCodeB4() {
        return codeB4;
    }

    public void setCodeB4(String codeB4) {
        this.codeB4 = codeB4;
    }

    public Long getCodeOpt() {
        return codeOpt;
    }

    public void setCodeOpt(Long codeOpt) {
        this.codeOpt = codeOpt;
    }
}
