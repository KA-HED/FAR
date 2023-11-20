package com.EIE.demo.model;
import javax.persistence.*;

@Entity
@Table(name = "UNITES_CRIBLEES", schema = "GEST_REP")
public class UnitesCriblees {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "UNT_ID")
    private Long untId;

    @Column(name = "NOM_ABREGE")
    private String nomAbrege;

    @Column(name = "S_AEB_M3")
    private Integer sAebM3;

    @Column(name = "S_AEB_ART")
    private Integer sAebArt;

    @Column(name = "S_MDB_M3")
    private Integer sMdbM3;

    @Column(name = "S_MDB_ART")
    private Integer sMdbArt;

    @Column(name = "S_OUTIL_M3")
    private Integer sOutilM3;

    @Column(name = "S_OUTIL_ART")
    private Integer sOutilArt;

    @Column(name = "S_HTAP_M3")
    private Integer sHtapM3;

    @Column(name = "S_HTAP_ART")
    private Integer sHtapArt;

    @Column(name = "S_MATEXP_M3")
    private Integer sMatexpM3;

    @Column(name = "S_MATEXP_ART")
    private Integer sMatexpArt;

    @Column(name = "S_OPT_M3")
    private Integer sOptM3;

    @Column(name = "S_OPT_ART")
    private Integer sOptArt;

    @Column(name = "S_B4DB_M3")
    private Integer sB4dbM3;

    @Column(name = "S_B4DB_ART")
    private Integer sB4dbArt;

    @Column(name = "S_DOC_M3")
    private Integer sDocM3;

    @Column(name = "S_DOC_ART")
    private Integer sDocArt;

    // Getters and setters for the fields (omitted for brevity)

    // You can also include constructors and additional methods as needed

    public Long getUntId() {
        return untId;
    }

    public void setUntId(Long untId) {
        this.untId = untId;
    }

    public String getNomAbrege() {
        return nomAbrege;
    }

    public void setNomAbrege(String nomAbrege) {
        this.nomAbrege = nomAbrege;
    }

    public Integer getsAebM3() {
        return sAebM3;
    }

    public void setsAebM3(Integer sAebM3) {
        this.sAebM3 = sAebM3;
    }

    public Integer getsAebArt() {
        return sAebArt;
    }

    public void setsAebArt(Integer sAebArt) {
        this.sAebArt = sAebArt;
    }

    public Integer getsMdbM3() {
        return sMdbM3;
    }

    public void setsMdbM3(Integer sMdbM3) {
        this.sMdbM3 = sMdbM3;
    }

    public Integer getsMdbArt() {
        return sMdbArt;
    }

    public void setsMdbArt(Integer sMdbArt) {
        this.sMdbArt = sMdbArt;
    }

    public Integer getsOutilM3() {
        return sOutilM3;
    }

    public void setsOutilM3(Integer sOutilM3) {
        this.sOutilM3 = sOutilM3;
    }

    public Integer getsOutilArt() {
        return sOutilArt;
    }

    public void setsOutilArt(Integer sOutilArt) {
        this.sOutilArt = sOutilArt;
    }

    public Integer getsHtapM3() {
        return sHtapM3;
    }

    public void setsHtapM3(Integer sHtapM3) {
        this.sHtapM3 = sHtapM3;
    }

    public Integer getsHtapArt() {
        return sHtapArt;
    }

    public void setsHtapArt(Integer sHtapArt) {
        this.sHtapArt = sHtapArt;
    }

    public Integer getsMatexpM3() {
        return sMatexpM3;
    }

    public void setsMatexpM3(Integer sMatexpM3) {
        this.sMatexpM3 = sMatexpM3;
    }

    public Integer getsMatexpArt() {
        return sMatexpArt;
    }

    public void setsMatexpArt(Integer sMatexpArt) {
        this.sMatexpArt = sMatexpArt;
    }

    public Integer getsOptM3() {
        return sOptM3;
    }

    public void setsOptM3(Integer sOptM3) {
        this.sOptM3 = sOptM3;
    }

    public Integer getsOptArt() {
        return sOptArt;
    }

    public void setsOptArt(Integer sOptArt) {
        this.sOptArt = sOptArt;
    }

    public Integer getsB4dbM3() {
        return sB4dbM3;
    }

    public void setsB4dbM3(Integer sB4dbM3) {
        this.sB4dbM3 = sB4dbM3;
    }

    public Integer getsB4dbArt() {
        return sB4dbArt;
    }

    public void setsB4dbArt(Integer sB4dbArt) {
        this.sB4dbArt = sB4dbArt;
    }

    public Integer getsDocM3() {
        return sDocM3;
    }

    public void setsDocM3(Integer sDocM3) {
        this.sDocM3 = sDocM3;
    }

    public Integer getsDocArt() {
        return sDocArt;
    }

    public void setsDocArt(Integer sDocArt) {
        this.sDocArt = sDocArt;
    }
}
