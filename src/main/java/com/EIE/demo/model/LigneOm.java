package com.EIE.demo.model;
import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "LIGNE_OM", schema = "AEB")
public class LigneOm {

    @Id
    @Column(name = "LIGNE_OM_ID", nullable = false)
    private Long ligneOmId;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "OM_ID", nullable = false)
    private OM om;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "ART_ID", nullable = false)
    private Art art;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "UNT_ORIGINE", nullable = false)
    private UnitesCriblees untOrigine;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "UNT_DEST", nullable = false)
    private UnitesCriblees untDest;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "POS_ORIGINE", nullable = false)
    private Pos posOrigine;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "POS_DEST")
    private Pos posDest;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "MODELE_ID", nullable = false)
    private ModeleAeb modeleAeb;

    @Column(name = "ETAT_LIGNE", nullable = false)
    private String etatLigne;

    @Column(name = "M6_EXP")
    private Long m6Exp;

    @Column(name = "MAG_EXP")
    private Long magExp;

    @Column(name = "REF_EXECUTION")
    private String refExecution;

    @Column(name = "DATE_EXECUTION")
    private Date dateExecution;

    @Column(name = "ANNULE")
    private Long annule;

    @Column(name = "DETENTEUR_ORIG")
    private Long detenteurOrig;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "UNT_ELEMENT_ORIG")
    private UnitesCriblees untElementOrig;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "UNT_DETACH_DEST")
    private UnitesCriblees untDetachDest;

    @Column(name = "DETENTEUR_DEST")
    private Long detenteurDest;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "UNT_ELEMENT_DEST")
    private UnitesCriblees untElementDest;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "UNT_DETACH_ORIG")
    private UnitesCriblees untDetachOrig;

    // Getters and setters for the fields (omitted for brevity)

    // You can also include constructors and additional methods as needed

    public Long getLigneOmId() {
        return ligneOmId;
    }

    public void setLigneOmId(Long ligneOmId) {
        this.ligneOmId = ligneOmId;
    }

    public OM getOm() {
        return om;
    }

    public void setOm(OM om) {
        this.om = om;
    }

    public Art getArt() {
        return art;
    }

    public void setArt(Art art) {
        this.art = art;
    }

    public UnitesCriblees getUntOrigine() {
        return untOrigine;
    }

    public void setUntOrigine(UnitesCriblees untOrigine) {
        this.untOrigine = untOrigine;
    }

    public UnitesCriblees getUntDest() {
        return untDest;
    }

    public void setUntDest(UnitesCriblees untDest) {
        this.untDest = untDest;
    }

    public Pos getPosOrigine() {
        return posOrigine;
    }

    public void setPosOrigine(Pos posOrigine) {
        this.posOrigine = posOrigine;
    }

    public Pos getPosDest() {
        return posDest;
    }

    public void setPosDest(Pos posDest) {
        this.posDest = posDest;
    }

    public ModeleAeb getModeleAeb() {
        return modeleAeb;
    }

    public void setModeleAeb(ModeleAeb modeleAeb) {
        this.modeleAeb = modeleAeb;
    }

    public String getEtatLigne() {
        return etatLigne;
    }

    public void setEtatLigne(String etatLigne) {
        this.etatLigne = etatLigne;
    }

    public Long getM6Exp() {
        return m6Exp;
    }

    public void setM6Exp(Long m6Exp) {
        this.m6Exp = m6Exp;
    }

    public Long getMagExp() {
        return magExp;
    }

    public void setMagExp(Long magExp) {
        this.magExp = magExp;
    }

    public String getRefExecution() {
        return refExecution;
    }

    public void setRefExecution(String refExecution) {
        this.refExecution = refExecution;
    }

    public Date getDateExecution() {
        return dateExecution;
    }

    public void setDateExecution(Date dateExecution) {
        this.dateExecution = dateExecution;
    }

    public Long getAnnule() {
        return annule;
    }

    public void setAnnule(Long annule) {
        this.annule = annule;
    }

    public Long getDetenteurOrig() {
        return detenteurOrig;
    }

    public void setDetenteurOrig(Long detenteurOrig) {
        this.detenteurOrig = detenteurOrig;
    }

    public Long getUntElementOrig() {
        return untElementOrig;
    }

    public void setUntElementOrig(Long untElementOrig) {
        this.untElementOrig = untElementOrig;
    }

    public Long getUntDetachDest() {
        return untDetachDest;
    }

    public void setUntDetachDest(Long untDetachDest) {
        this.untDetachDest = untDetachDest;
    }

    public Long getDetenteurDest() {
        return detenteurDest;
    }

    public void setDetenteurDest(Long detenteurDest) {
        this.detenteurDest = detenteurDest;
    }

    public Long getUntElementDest() {
        return untElementDest;
    }

    public void setUntElementDest(Long untElementDest) {
        this.untElementDest = untElementDest;
    }

    public Long getUntDetachOrig() {
        return untDetachOrig;
    }

    public void setUntDetachOrig(Long untDetachOrig) {
        this.untDetachOrig = untDetachOrig;
    }
}
