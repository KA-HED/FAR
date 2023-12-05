package com.EIE.demo.model;
import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "M14", schema = "AEB")
public class M14 {

    @Id
    @Column(name = "M14_ID", nullable = false)
    private Long m14Id;

    @Column(name = "N_M14", nullable = false)
    private String nM14;

    @Column(name = "CATEGORIE")
    private Character categorie;

    @Column(name = "IDENTIF_CESSION")
    private String identifCession;

    @Column(name = "AUTORISATION_TRANSPORT_NUM")
    private String autorisationTransportNum;

    @Column(name = "UNT_EXP", nullable = false)
    private Long untExp;

    @Column(name = "UNT_DEST", nullable = false)
    private Long untDest;

    @Column(name = "MAG_EXP")
    private Integer magExp;

    @Column(name = "MAG_DEST")
    private Integer magDest;

    @Column(name = "MONT_EXP_M14")
    private Double montExpM14;

    @Column(name = "MONT_DEST_M14")
    private Double montDestM14;

    @Column(name = "ETAT_AVANCEMENT", nullable = false)
    private Character etatAvancement;

    @Column(name = "TRAC_M14_EXP")
    private String tracM14Exp;

    @Column(name = "TRAC_M14_DEST")
    private String tracM14Dest;

    @Column(name = "REF_M14")
    private String refM14;

    @Column(name = "OBS_RECTO_EXP")
    private String obsRectoExp;

    @Column(name = "OBS_RECTO_DEST")
    private String obsRectoDest;

    @Column(name = "OBS_VERSO_EXP")
    private String obsVersoExp;

    @Column(name = "DATE_EMISSION")
    private Date dateEmission;

    @Column(name = "ACT_EMETTEUR")
    private Integer actEmetteur;

    @Column(name = "DATE_CREATION_EXP")
    private Date dateCreationExp;

    @Column(name = "ACT_CREATEUR_EXP")
    private Integer actCreateurExp;

    @Column(name = "DATE_VALID_CHEF_EXP")
    private Date dateValidChefExp;

    @Column(name = "ACT_CHEF_EXP")
    private Integer actChefExp;

    @Column(name = "DATE_FICHISTE1_EXP")
    private Date dateFichiste1Exp;

    @Column(name = "FICHISTE1_EXP")
    private Integer fichiste1Exp;

    @Column(name = "DATE_NOTIFICATION_EXP")
    private Date dateNotificationExp;

    @Column(name = "ACT_NOTIFICATEUR_EXP")
    private Integer actNotificateurExp;

    @Column(name = "DATE_EXEC_EXP")
    private Date dateExecExp;

    @Column(name = "ACT_EXECUTANT_EXP")
    private Integer actExecutantExp;

    @Column(name = "DATE_RECEPTION_PROVISOIRE")
    private Date dateReceptionProvisoire;

    @Column(name = "RECEPTEUR_PROV")
    private String recepteurProv;

    @Column(name = "DATE_FICHISTE2_EXP")
    private Date dateFichiste2Exp;

    @Column(name = "ACT_FICHISTE2_EXP")
    private Integer actFichiste2Exp;

    @Column(name = "DATE_ENVOI")
    private Date dateEnvoi;

    @Column(name = "COMPTABLE_EXP")
    private String comptableExp;

    @Column(name = "DATE_CREATION_DEST")
    private Date dateCreationDest;

    @Column(name = "ACT_CREATEUR_DEST")
    private Integer actCreateurDest;

    @Column(name = "DATE_RECEPTION_DEST")
    private Date dateReceptionDest;

    @Column(name = "ACT_RECEPTION_DEST")
    private Integer actReceptionDest;

    @Column(name = "DATE_FICHISTE1_DEST")
    private Date dateFichiste1Dest;

    @Column(name = "ACT_FICHISTE1_DEST")
    private Integer actFichiste1Dest;

    @Column(name = "DATE_NOTIFICATION_DEST")
    private Date dateNotificationDest;

    @Column(name = "ACT_NOTIFICATEUR_DEST")
    private Integer actNotificateurDest;

    @Column(name = "DATE_EXEC_DEST")
    private Date dateExecDest;

    @Column(name = "ACT_EXECUTANT_DEST")
    private Integer actExecutantDest;

    @Column(name = "DATE_FICHISTE2_DEST")
    private Date dateFichiste2Dest;

    @Column(name = "ACT_FICHISTE2_DEST")
    private Integer actFichiste2Dest;

    @Column(name = "DATE_PRISE_EN_CHARGE")
    private Date datePriseEnCharge;

    @Column(name = "ACT_CLASSEMENT_DEST")
    private Integer actClassementDest;

    @Column(name = "ACT_PRISE_EN_CHARGE")
    private Integer actPriseEnCharge;

    @Column(name = "DATE_CLASSEMENT_EXP")
    private Date dateClassementExp;

    @Column(name = "ACT_CLASSEMENT_EXP")
    private Integer actClassementExp;

    @Column(name = "DATE_CLASSEMENT_DEST")
    private Date dateClassementDest;

    @Column(name = "OBS_VERSO_DEST")
    private String obsVersoDest;

    @Column(name = "REF_BM1")
    private String refBM1;

    @Column(name = "DATE_M14")
    private Date dateM14;

    @Column(name = "MAR_ID")
    private Long marId;

    @Column(name = "OM_ID")
    private Long omId;

    @Column(name = "UNT_ORIGINE")
    private String untOrigine;

    @Column(name = "TYPE_DOC")
    private String typeDoc;

    @Column(name = "ACT_PRENANTE")
    private Long actPrenante;

    @Column(name = "DATE_PRENANTE")
    private Date datePrenante;

    public Long getM14Id() {
        return m14Id;
    }

    public void setM14Id(Long m14Id) {
        this.m14Id = m14Id;
    }

    public String getnM14() {
        return nM14;
    }

    public void setnM14(String nM14) {
        this.nM14 = nM14;
    }

    public Character getCategorie() {
        return categorie;
    }

    public void setCategorie(Character categorie) {
        this.categorie = categorie;
    }

    public String getIdentifCession() {
        return identifCession;
    }

    public void setIdentifCession(String identifCession) {
        this.identifCession = identifCession;
    }

    public String getAutorisationTransportNum() {
        return autorisationTransportNum;
    }

    public void setAutorisationTransportNum(String autorisationTransportNum) {
        this.autorisationTransportNum = autorisationTransportNum;
    }

    public Long getUntExp() {
        return untExp;
    }

    public void setUntExp(Long untExp) {
        this.untExp = untExp;
    }

    public Long getUntDest() {
        return untDest;
    }

    public void setUntDest(Long untDest) {
        this.untDest = untDest;
    }

    public Integer getMagExp() {
        return magExp;
    }

    public void setMagExp(Integer magExp) {
        this.magExp = magExp;
    }

    public Integer getMagDest() {
        return magDest;
    }

    public void setMagDest(Integer magDest) {
        this.magDest = magDest;
    }

    public Double getMontExpM14() {
        return montExpM14;
    }

    public void setMontExpM14(Double montExpM14) {
        this.montExpM14 = montExpM14;
    }

    public Double getMontDestM14() {
        return montDestM14;
    }

    public void setMontDestM14(Double montDestM14) {
        this.montDestM14 = montDestM14;
    }

    public Character getEtatAvancement() {
        return etatAvancement;
    }

    public void setEtatAvancement(Character etatAvancement) {
        this.etatAvancement = etatAvancement;
    }

    public String getTracM14Exp() {
        return tracM14Exp;
    }

    public void setTracM14Exp(String tracM14Exp) {
        this.tracM14Exp = tracM14Exp;
    }

    public String getTracM14Dest() {
        return tracM14Dest;
    }

    public void setTracM14Dest(String tracM14Dest) {
        this.tracM14Dest = tracM14Dest;
    }

    public String getRefM14() {
        return refM14;
    }

    public void setRefM14(String refM14) {
        this.refM14 = refM14;
    }

    public String getObsRectoExp() {
        return obsRectoExp;
    }

    public void setObsRectoExp(String obsRectoExp) {
        this.obsRectoExp = obsRectoExp;
    }

    public String getObsRectoDest() {
        return obsRectoDest;
    }

    public void setObsRectoDest(String obsRectoDest) {
        this.obsRectoDest = obsRectoDest;
    }

    public String getObsVersoExp() {
        return obsVersoExp;
    }

    public void setObsVersoExp(String obsVersoExp) {
        this.obsVersoExp = obsVersoExp;
    }

    public Date getDateEmission() {
        return dateEmission;
    }

    public void setDateEmission(Date dateEmission) {
        this.dateEmission = dateEmission;
    }

    public Integer getActEmetteur() {
        return actEmetteur;
    }

    public void setActEmetteur(Integer actEmetteur) {
        this.actEmetteur = actEmetteur;
    }

    public Date getDateCreationExp() {
        return dateCreationExp;
    }

    public void setDateCreationExp(Date dateCreationExp) {
        this.dateCreationExp = dateCreationExp;
    }

    public Integer getActCreateurExp() {
        return actCreateurExp;
    }

    public void setActCreateurExp(Integer actCreateurExp) {
        this.actCreateurExp = actCreateurExp;
    }

    public Date getDateValidChefExp() {
        return dateValidChefExp;
    }

    public void setDateValidChefExp(Date dateValidChefExp) {
        this.dateValidChefExp = dateValidChefExp;
    }

    public Integer getActChefExp() {
        return actChefExp;
    }

    public void setActChefExp(Integer actChefExp) {
        this.actChefExp = actChefExp;
    }

    public Date getDateFichiste1Exp() {
        return dateFichiste1Exp;
    }

    public void setDateFichiste1Exp(Date dateFichiste1Exp) {
        this.dateFichiste1Exp = dateFichiste1Exp;
    }

    public Integer getFichiste1Exp() {
        return fichiste1Exp;
    }

    public void setFichiste1Exp(Integer fichiste1Exp) {
        this.fichiste1Exp = fichiste1Exp;
    }

    public Date getDateNotificationExp() {
        return dateNotificationExp;
    }

    public void setDateNotificationExp(Date dateNotificationExp) {
        this.dateNotificationExp = dateNotificationExp;
    }

    public Integer getActNotificateurExp() {
        return actNotificateurExp;
    }

    public void setActNotificateurExp(Integer actNotificateurExp) {
        this.actNotificateurExp = actNotificateurExp;
    }

    public Date getDateExecExp() {
        return dateExecExp;
    }

    public void setDateExecExp(Date dateExecExp) {
        this.dateExecExp = dateExecExp;
    }

    public Integer getActExecutantExp() {
        return actExecutantExp;
    }

    public void setActExecutantExp(Integer actExecutantExp) {
        this.actExecutantExp = actExecutantExp;
    }

    public Date getDateReceptionProvisoire() {
        return dateReceptionProvisoire;
    }

    public void setDateReceptionProvisoire(Date dateReceptionProvisoire) {
        this.dateReceptionProvisoire = dateReceptionProvisoire;
    }

    public String getRecepteurProv() {
        return recepteurProv;
    }

    public void setRecepteurProv(String recepteurProv) {
        this.recepteurProv = recepteurProv;
    }

    public Date getDateFichiste2Exp() {
        return dateFichiste2Exp;
    }

    public void setDateFichiste2Exp(Date dateFichiste2Exp) {
        this.dateFichiste2Exp = dateFichiste2Exp;
    }

    public Integer getActFichiste2Exp() {
        return actFichiste2Exp;
    }

    public void setActFichiste2Exp(Integer actFichiste2Exp) {
        this.actFichiste2Exp = actFichiste2Exp;
    }

    public Date getDateEnvoi() {
        return dateEnvoi;
    }

    public void setDateEnvoi(Date dateEnvoi) {
        this.dateEnvoi = dateEnvoi;
    }

    public String getComptableExp() {
        return comptableExp;
    }

    public void setComptableExp(String comptableExp) {
        this.comptableExp = comptableExp;
    }

    public Date getDateCreationDest() {
        return dateCreationDest;
    }

    public void setDateCreationDest(Date dateCreationDest) {
        this.dateCreationDest = dateCreationDest;
    }

    public Integer getActCreateurDest() {
        return actCreateurDest;
    }

    public void setActCreateurDest(Integer actCreateurDest) {
        this.actCreateurDest = actCreateurDest;
    }

    public Date getDateReceptionDest() {
        return dateReceptionDest;
    }

    public void setDateReceptionDest(Date dateReceptionDest) {
        this.dateReceptionDest = dateReceptionDest;
    }

    public Integer getActReceptionDest() {
        return actReceptionDest;
    }

    public void setActReceptionDest(Integer actReceptionDest) {
        this.actReceptionDest = actReceptionDest;
    }

    public Date getDateFichiste1Dest() {
        return dateFichiste1Dest;
    }

    public void setDateFichiste1Dest(Date dateFichiste1Dest) {
        this.dateFichiste1Dest = dateFichiste1Dest;
    }

    public Integer getActFichiste1Dest() {
        return actFichiste1Dest;
    }

    public void setActFichiste1Dest(Integer actFichiste1Dest) {
        this.actFichiste1Dest = actFichiste1Dest;
    }

    public Date getDateNotificationDest() {
        return dateNotificationDest;
    }

    public void setDateNotificationDest(Date dateNotificationDest) {
        this.dateNotificationDest = dateNotificationDest;
    }

    public Integer getActNotificateurDest() {
        return actNotificateurDest;
    }

    public void setActNotificateurDest(Integer actNotificateurDest) {
        this.actNotificateurDest = actNotificateurDest;
    }

    public Date getDateExecDest() {
        return dateExecDest;
    }

    public void setDateExecDest(Date dateExecDest) {
        this.dateExecDest = dateExecDest;
    }

    public Integer getActExecutantDest() {
        return actExecutantDest;
    }

    public void setActExecutantDest(Integer actExecutantDest) {
        this.actExecutantDest = actExecutantDest;
    }

    public Date getDateFichiste2Dest() {
        return dateFichiste2Dest;
    }

    public void setDateFichiste2Dest(Date dateFichiste2Dest) {
        this.dateFichiste2Dest = dateFichiste2Dest;
    }

    public Integer getActFichiste2Dest() {
        return actFichiste2Dest;
    }

    public void setActFichiste2Dest(Integer actFichiste2Dest) {
        this.actFichiste2Dest = actFichiste2Dest;
    }

    public Date getDatePriseEnCharge() {
        return datePriseEnCharge;
    }

    public void setDatePriseEnCharge(Date datePriseEnCharge) {
        this.datePriseEnCharge = datePriseEnCharge;
    }

    public Integer getActClassementDest() {
        return actClassementDest;
    }

    public void setActClassementDest(Integer actClassementDest) {
        this.actClassementDest = actClassementDest;
    }

    public Integer getActPriseEnCharge() {
        return actPriseEnCharge;
    }

    public void setActPriseEnCharge(Integer actPriseEnCharge) {
        this.actPriseEnCharge = actPriseEnCharge;
    }

    public Date getDateClassementExp() {
        return dateClassementExp;
    }

    public void setDateClassementExp(Date dateClassementExp) {
        this.dateClassementExp = dateClassementExp;
    }

    public Integer getActClassementExp() {
        return actClassementExp;
    }

    public void setActClassementExp(Integer actClassementExp) {
        this.actClassementExp = actClassementExp;
    }

    public Date getDateClassementDest() {
        return dateClassementDest;
    }

    public void setDateClassementDest(Date dateClassementDest) {
        this.dateClassementDest = dateClassementDest;
    }

    public String getObsVersoDest() {
        return obsVersoDest;
    }

    public void setObsVersoDest(String obsVersoDest) {
        this.obsVersoDest = obsVersoDest;
    }

    public String getRefBM1() {
        return refBM1;
    }

    public void setRefBM1(String refBM1) {
        this.refBM1 = refBM1;
    }

    public Date getDateM14() {
        return dateM14;
    }

    public void setDateM14(Date dateM14) {
        this.dateM14 = dateM14;
    }

    public Long getMarId() {
        return marId;
    }

    public void setMarId(Long marId) {
        this.marId = marId;
    }

    public Long getOmId() {
        return omId;
    }

    public void setOmId(Long omId) {
        this.omId = omId;
    }

    public String getUntOrigine() {
        return untOrigine;
    }

    public void setUntOrigine(String untOrigine) {
        this.untOrigine = untOrigine;
    }

    public String getTypeDoc() {
        return typeDoc;
    }

    public void setTypeDoc(String typeDoc) {
        this.typeDoc = typeDoc;
    }

    public Long getActPrenante() {
        return actPrenante;
    }

    public void setActPrenante(Long actPrenante) {
        this.actPrenante = actPrenante;
    }

    public Date getDatePrenante() {
        return datePrenante;
    }

    public void setDatePrenante(Date datePrenante) {
        this.datePrenante = datePrenante;
    }

    // You can also add constructors and additional methods as needed
}
