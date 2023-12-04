package com.EIE.demo.model;
import org.springframework.data.annotation.PersistenceConstructor;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "MODELE_AEB", schema = "AEB")
public class ModeleAeb {

    // Constructors, getters, and setters
    private String value;
    @PersistenceConstructor
    public ModeleAeb(String value) {
        this.modeleId =  Long.parseLong(value);
    }
    public ModeleAeb() {}

    @Id
    @Column(name = "MODELE_ID", nullable = false, unique = true)
    private Long modeleId;


    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "CAT_ID")
    private CategorieAEB categorieAEB;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "S_CAT_ID")
    private SCategorieAEB sCategorieAEB;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "VERSION_ID")
    private VersionAeb versionAeb;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "MARQUE_ID", nullable = false)
    private MarqueAEB marqueAEB;



    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "TYPE_ID", nullable = false)
    private TypeAEB typeAEB;

    @Column(name = "PRIX_UNITAIRE")
    private Double prixUnitaire;

    @Column(name = "ETAT_ASSURANCE")
    private String etatAssurance;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "PAYS_ID")
    private Pays paysId;

    @Column(name = "DESIGNATION", length = 500)
    private String designation;

    @Lob
    @Column(name = "IMAGE")
    private byte[] image;

    @Column(name = "CODE_B4", length = 8)
    private String codeB4;

    @Column(name = "ACT_ID")
    private Long actId;

    @Column(name = "NBRE_MODIFICATION")
    private Long nbreModification;

    @Column(name = "DATE_MODIFICATION")
    private Date dateModification;

    @Column(name = "ANC_DESIGNATION", length = 500)
    private String ancDesignation;

    @Column(name = "DIFF", length = 50)
    private String diff;

    @Column(name = "CODE_PRIME_ASSURANCE", length = 1)
    private String codePrimeAssurance;

    @Column(name = "COMBUSTIBLE", length = 3)
    private String combustible;

    @Column(name = "NSN", length = 20)
    private String nsn;

    @Column(name = "ACTEUR_ID")
    private Long acteurId;

    @Column(name = "DATE_OP")
    private Date dateOp;

    @Lob
    @Column(name = "PHOTO")
    private byte[] photo;

    @Column(name = "NOMENCLATURE", length = 50)
    private String nomenclature;

    @Column(name = "AVEC_PHOTO", length = 3)
    private String avecPhoto;

    @Column(name = "CONS_100")
    private Double cons100;

    @Column(name = "CONS_HEURE")
    private Double consHeure;

    // Constructors, Getters, Setters, and other methods as needed

    public Long getModeleId() {
        return modeleId;
    }

    public void setModeleId(Long modeleId) {
        this.modeleId = modeleId;
    }

    public CategorieAEB getCategorieAEB() {
        return categorieAEB;
    }

    public void setCategorieAEB(CategorieAEB categorieAEB) {
        this.categorieAEB = categorieAEB;
    }

    public SCategorieAEB getsCategorieAEB() {
        return sCategorieAEB;
    }

    public void setsCategorieAEB(SCategorieAEB sCategorieAEB) {
        this.sCategorieAEB = sCategorieAEB;
    }

    public VersionAeb getVersionAeb() {
        return versionAeb;
    }

    public void setVersionAeb(VersionAeb versionAeb) {
        this.versionAeb = versionAeb;
    }

    public MarqueAEB getMarqueAEB() {
        return marqueAEB;
    }

    public void setMarqueAEB(MarqueAEB marqueAEB) {
        this.marqueAEB = marqueAEB;
    }

    public TypeAEB getTypeAEB() {
        return typeAEB;
    }

    public void setTypeAEB(TypeAEB typeAEB) {
        this.typeAEB = typeAEB;
    }

    public Double getPrixUnitaire() {
        return prixUnitaire;
    }

    public void setPrixUnitaire(Double prixUnitaire) {
        this.prixUnitaire = prixUnitaire;
    }

    public String getEtatAssurance() {
        return etatAssurance;
    }

    public void setEtatAssurance(String etatAssurance) {
        this.etatAssurance = etatAssurance;
    }

    public Pays getPaysId() {
        return paysId;
    }

    public void setPaysId(Pays paysId) {
        this.paysId = paysId;
    }

    public String getDesignation() {
        return designation;
    }

    public void setDesignation(String designation) {
        this.designation = designation;
    }

    public byte[] getImage() {
        return image;
    }

    public void setImage(byte[] image) {
        this.image = image;
    }

    public String getCodeB4() {
        return codeB4;
    }

    public void setCodeB4(String codeB4) {
        this.codeB4 = codeB4;
    }

    public Long getActId() {
        return actId;
    }

    public void setActId(Long actId) {
        this.actId = actId;
    }

    public Long getNbreModification() {
        return nbreModification;
    }

    public void setNbreModification(Long nbreModification) {
        this.nbreModification = nbreModification;
    }

    public Date getDateModification() {
        return dateModification;
    }

    public void setDateModification(Date dateModification) {
        this.dateModification = dateModification;
    }

    public String getAncDesignation() {
        return ancDesignation;
    }

    public void setAncDesignation(String ancDesignation) {
        this.ancDesignation = ancDesignation;
    }

    public String getDiff() {
        return diff;
    }

    public void setDiff(String diff) {
        this.diff = diff;
    }

    public String getCodePrimeAssurance() {
        return codePrimeAssurance;
    }

    public void setCodePrimeAssurance(String codePrimeAssurance) {
        this.codePrimeAssurance = codePrimeAssurance;
    }

    public String getCombustible() {
        return combustible;
    }

    public void setCombustible(String combustible) {
        this.combustible = combustible;
    }

    public String getNsn() {
        return nsn;
    }

    public void setNsn(String nsn) {
        this.nsn = nsn;
    }

    public Long getActeurId() {
        return acteurId;
    }

    public void setActeurId(Long acteurId) {
        this.acteurId = acteurId;
    }

    public Date getDateOp() {
        return dateOp;
    }

    public void setDateOp(Date dateOp) {
        this.dateOp = dateOp;
    }

    public byte[] getPhoto() {
        return photo;
    }

    public void setPhoto(byte[] photo) {
        this.photo = photo;
    }

    public String getNomenclature() {
        return nomenclature;
    }

    public void setNomenclature(String nomenclature) {
        this.nomenclature = nomenclature;
    }

    public String getAvecPhoto() {
        return avecPhoto;
    }

    public void setAvecPhoto(String avecPhoto) {
        this.avecPhoto = avecPhoto;
    }

    public Double getCons100() {
        return cons100;
    }

    public void setCons100(Double cons100) {
        this.cons100 = cons100;
    }

    public Double getConsHeure() {
        return consHeure;
    }

    public void setConsHeure(Double consHeure) {
        this.consHeure = consHeure;
    }
}
