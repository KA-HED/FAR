package com.EIE.demo.model;
import javax.persistence.*;
import java.math.BigDecimal;
import java.util.Date;

@Entity
@Table(name = "ART", schema = "AEB")
public class Art {

    @Id
    @Column(name = "N_NOMENCL")
    private Long nNomencl;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "SCE_DETENTEUR_ID")
    private Detenteur detenteur;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "S_CAT_ID", nullable = false)
    private SCategorieAEB sCategorieAEB;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "VERSION_ID")
    private VersionAeb versionAeb;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "POS_ID")
    private Pos pos;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "MARQUE_ID", nullable = false)
    private MarqueAEB marqueAEB;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "GRADE_ID")
    private Grade grade;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "UNT_ID")
    private UnitesCriblees unitesCriblees;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "CAT_ID", nullable = false)
    private CategorieAEB categorieAEB;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "TYPE_ID", nullable = false)
    private TypeAEB typeAEB;

    @Column(name = "NOMINERALOGIQUE", length = 7, nullable = false)
    private String nomineralogique;

    @Column(name = "NUM_CIVIL", length = 12)
    private String numCivil;

    @Column(name = "NUM_CHASSIS", length = 35, nullable = false)
    private String numChassis;

    @Column(name = "NUM_MOTEUR", length = 20)
    private String numMoteur;

    @Column(name = "ANNEE_CONSTRUCTION")
    private Integer anneeConstruction;

    @Column(name = "DATE_MISE_SCE")
    private Integer dateMiseSce;

    @Column(name = "PRIX_UNITAIRE", precision = 12, scale = 2)
    private BigDecimal prixUnitaire;

    @Column(name = "PERS_DETENTRICE")
    private Long persDetentrice;

    @Column(name = "OBS_PERS_DETENTRICE", length = 30)
    private String obsPersDetentrice;

    @Column(name = "ETAT_ASSURANCE", length = 1)
    private String etatAssurance;

    @Column(name = "REF_IMMAT", length = 20)
    private String refImmat;

    @Column(name = "DATE_REF_IMMAT")
    private Date dateRefImmat;

    @Column(name = "PAYS_ID")
    private Long paysId;

    @Column(name = "MAG_ID")
    private Long magId;

    @Column(name = "STCK_ELEM_ID")
    private Long stckElemId;

    @Column(name = "MODELE_ID")
    private Long modeleId;

    @Column(name = "NBRE_MODIFICATION")
    private Long nbreModification;

    @Column(name = "DATE_MODIFICATION")
    private Date dateModification;

    @Column(name = "N_POLICE")
    private String nPolice;

    @Column(name = "DT1_POLICE")
    private Date dt1Police;

    @Column(name = "DT2_POLICE")
    private Date dt2Police;

    @Column(name = "DISPONIBILITE")
    private String disponibilite;

    @Column(name = "S_DEPOT_ID")
    private Long sDepotId;

    @Column(name = "OBS_DETENTEUR")
    private String obsDetenteur;

    @Column(name = "DETAIL_REF_NV_ART_ID")
    private Long detailRefNvArtId;

    @Column(name = "UNT_ID_EMG", nullable = false)
    private Long untIdEmg;

    @Column(name = "POS_ID_EMG", nullable = false)
    private String posIdEmg;

    @Column(name = "ACTEUR_ID")
    private Long acteurId;

    @Column(name = "DATE_OP")
    private Date dateOp;

    @Column(name = "ACTEUR_MOD_ID")
    private Long acteurModId;

    @Column(name = "DATE_MOD_OP")
    private Date dateModOp;

    @Column(name = "UNT_DETACH")
    private Long untDetach;

    @Column(name = "INDISPO")
    private String indispo;

    @Column(name = "UNT_ELEMENT")
    private Long untElement;

    @Column(name = "DATE_FABRICATION")
    private Long dateFabrication;

    @Column(name = "DUREE_VIE")
    private Long dureeVie;

    @Column(name = "KM_PARCOURUS")
    private Long kmParcourus;

    @Column(name = "DATE_VALORISATION")
    private Date dateValorisation;

    @Column(name = "DATE_RENOVATION")
    private Date dateRenovation;

    @Column(name = "CHASSIS")
    private Long chassis;

    @Column(name = "OLD_POS_EMG")
    private Long oldPosEmg;

    @Column(name = "UNT_CORB")
    private Long untCorb;

    @Column(name = "POS_CORB")
    private Long posCorb;

    @Column(name = "CODE_ANONYME")
    private String codeAnonyme;

    @Column(name = "ACTEUR_MODIFICATION")
    private Long acteurModification;

    @Column(name = "OBS_DESIG")
    private String obsDesig;

    // Autres relations avec d'autres tables (ajoutez selon vos contraintes de clé étrangère)

    // Constructeurs, getters et setters

    public Long getnNomencl() {
        return nNomencl;
    }

    public void setnNomencl(Long nNomencl) {
        this.nNomencl = nNomencl;
    }

    public Detenteur getDetenteur() {
        return detenteur;
    }

    public void setDetenteur(Detenteur detenteur) {
        this.detenteur = detenteur;
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

    public Pos getPos() {
        return pos;
    }

    public void setPos(Pos pos) {
        this.pos = pos;
    }

    public MarqueAEB getMarqueAEB() {
        return marqueAEB;
    }

    public void setMarqueAEB(MarqueAEB marqueAEB) {
        this.marqueAEB = marqueAEB;
    }

    public Grade getGrade() {
        return grade;
    }

    public void setGrade(Grade grade) {
        this.grade = grade;
    }

    public UnitesCriblees getUnitesCriblees() {
        return unitesCriblees;
    }

    public void setUnitesCriblees(UnitesCriblees unitesCriblees) {
        this.unitesCriblees = unitesCriblees;
    }

    public CategorieAEB getCategorieAEB() {
        return categorieAEB;
    }

    public void setCategorieAEB(CategorieAEB categorieAEB) {
        this.categorieAEB = categorieAEB;
    }

    public TypeAEB getTypeAEB() {
        return typeAEB;
    }

    public void setTypeAEB(TypeAEB typeAEB) {
        this.typeAEB = typeAEB;
    }

    public String getNomineralogique() {
        return nomineralogique;
    }

    public void setNomineralogique(String nomineralogique) {
        this.nomineralogique = nomineralogique;
    }

    public String getNumCivil() {
        return numCivil;
    }

    public void setNumCivil(String numCivil) {
        this.numCivil = numCivil;
    }

    public String getNumChassis() {
        return numChassis;
    }

    public void setNumChassis(String numChassis) {
        this.numChassis = numChassis;
    }

    public String getNumMoteur() {
        return numMoteur;
    }

    public void setNumMoteur(String numMoteur) {
        this.numMoteur = numMoteur;
    }

    public Integer getAnneeConstruction() {
        return anneeConstruction;
    }

    public void setAnneeConstruction(Integer anneeConstruction) {
        this.anneeConstruction = anneeConstruction;
    }

    public Integer getDateMiseSce() {
        return dateMiseSce;
    }

    public void setDateMiseSce(Integer dateMiseSce) {
        this.dateMiseSce = dateMiseSce;
    }

    public BigDecimal getPrixUnitaire() {
        return prixUnitaire;
    }

    public void setPrixUnitaire(BigDecimal prixUnitaire) {
        this.prixUnitaire = prixUnitaire;
    }

    public Long getPersDetentrice() {
        return persDetentrice;
    }

    public void setPersDetentrice(Long persDetentrice) {
        this.persDetentrice = persDetentrice;
    }

    public String getObsPersDetentrice() {
        return obsPersDetentrice;
    }

    public void setObsPersDetentrice(String obsPersDetentrice) {
        this.obsPersDetentrice = obsPersDetentrice;
    }

    public String getEtatAssurance() {
        return etatAssurance;
    }

    public void setEtatAssurance(String etatAssurance) {
        this.etatAssurance = etatAssurance;
    }

    public String getRefImmat() {
        return refImmat;
    }

    public void setRefImmat(String refImmat) {
        this.refImmat = refImmat;
    }

    public Date getDateRefImmat() {
        return dateRefImmat;
    }

    public void setDateRefImmat(Date dateRefImmat) {
        this.dateRefImmat = dateRefImmat;
    }

    public Long getPaysId() {
        return paysId;
    }

    public void setPaysId(Long paysId) {
        this.paysId = paysId;
    }

    public Long getMagId() {
        return magId;
    }

    public void setMagId(Long magId) {
        this.magId = magId;
    }

    public Long getStckElemId() {
        return stckElemId;
    }

    public void setStckElemId(Long stckElemId) {
        this.stckElemId = stckElemId;
    }

    public Long getModeleId() {
        return modeleId;
    }

    public void setModeleId(Long modeleId) {
        this.modeleId = modeleId;
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

    public String getnPolice() {
        return nPolice;
    }

    public void setnPolice(String nPolice) {
        this.nPolice = nPolice;
    }

    public Date getDt1Police() {
        return dt1Police;
    }

    public void setDt1Police(Date dt1Police) {
        this.dt1Police = dt1Police;
    }

    public Date getDt2Police() {
        return dt2Police;
    }

    public void setDt2Police(Date dt2Police) {
        this.dt2Police = dt2Police;
    }

    public String getDisponibilite() {
        return disponibilite;
    }

    public void setDisponibilite(String disponibilite) {
        this.disponibilite = disponibilite;
    }

    public Long getsDepotId() {
        return sDepotId;
    }

    public void setsDepotId(Long sDepotId) {
        this.sDepotId = sDepotId;
    }

    public String getObsDetenteur() {
        return obsDetenteur;
    }

    public void setObsDetenteur(String obsDetenteur) {
        this.obsDetenteur = obsDetenteur;
    }

    public Long getDetailRefNvArtId() {
        return detailRefNvArtId;
    }

    public void setDetailRefNvArtId(Long detailRefNvArtId) {
        this.detailRefNvArtId = detailRefNvArtId;
    }

    public Long getUntIdEmg() {
        return untIdEmg;
    }

    public void setUntIdEmg(Long untIdEmg) {
        this.untIdEmg = untIdEmg;
    }

    public String getPosIdEmg() {
        return posIdEmg;
    }

    public void setPosIdEmg(String posIdEmg) {
        this.posIdEmg = posIdEmg;
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

    public Long getActeurModId() {
        return acteurModId;
    }

    public void setActeurModId(Long acteurModId) {
        this.acteurModId = acteurModId;
    }

    public Date getDateModOp() {
        return dateModOp;
    }

    public void setDateModOp(Date dateModOp) {
        this.dateModOp = dateModOp;
    }

    public Long getUntDetach() {
        return untDetach;
    }

    public void setUntDetach(Long untDetach) {
        this.untDetach = untDetach;
    }

    public String getIndispo() {
        return indispo;
    }

    public void setIndispo(String indispo) {
        this.indispo = indispo;
    }

    public Long getUntElement() {
        return untElement;
    }

    public void setUntElement(Long untElement) {
        this.untElement = untElement;
    }

    public Long getDateFabrication() {
        return dateFabrication;
    }

    public void setDateFabrication(Long dateFabrication) {
        this.dateFabrication = dateFabrication;
    }

    public Long getDureeVie() {
        return dureeVie;
    }

    public void setDureeVie(Long dureeVie) {
        this.dureeVie = dureeVie;
    }

    public Long getKmParcourus() {
        return kmParcourus;
    }

    public void setKmParcourus(Long kmParcourus) {
        this.kmParcourus = kmParcourus;
    }

    public Date getDateValorisation() {
        return dateValorisation;
    }

    public void setDateValorisation(Date dateValorisation) {
        this.dateValorisation = dateValorisation;
    }

    public Date getDateRenovation() {
        return dateRenovation;
    }

    public void setDateRenovation(Date dateRenovation) {
        this.dateRenovation = dateRenovation;
    }

    public Long getChassis() {
        return chassis;
    }

    public void setChassis(Long chassis) {
        this.chassis = chassis;
    }

    public Long getOldPosEmg() {
        return oldPosEmg;
    }

    public void setOldPosEmg(Long oldPosEmg) {
        this.oldPosEmg = oldPosEmg;
    }

    public Long getUntCorb() {
        return untCorb;
    }

    public void setUntCorb(Long untCorb) {
        this.untCorb = untCorb;
    }

    public Long getPosCorb() {
        return posCorb;
    }

    public void setPosCorb(Long posCorb) {
        this.posCorb = posCorb;
    }

    public String getCodeAnonyme() {
        return codeAnonyme;
    }

    public void setCodeAnonyme(String codeAnonyme) {
        this.codeAnonyme = codeAnonyme;
    }

    public Long getActeurModification() {
        return acteurModification;
    }

    public void setActeurModification(Long acteurModification) {
        this.acteurModification = acteurModification;
    }

    public String getObsDesig() {
        return obsDesig;
    }

    public void setObsDesig(String obsDesig) {
        this.obsDesig = obsDesig;
    }
}
