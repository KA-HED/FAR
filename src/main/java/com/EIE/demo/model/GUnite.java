package com.EIE.demo.model;
import org.springframework.data.annotation.PersistenceConstructor;

import javax.persistence.*;
import java.math.BigDecimal;
import java.util.Date;

@Entity
@Table(name = "G_UNITE", schema = "GEST_REP")
public class GUnite {

    // Constructors, getters, and setters
    private String value;
    @PersistenceConstructor
    public GUnite(String value) {
        this.untId =  Long.parseLong(value);
    }
    public GUnite() {}

    @Id
    @Column(name = "UNT_ID")
    private Long untId;

    @Column(name = "TYPE_OE_ID")
    private Integer typeOeId;

    @Column(name = "UNT_UNT_ID")
    private Long untUntId;

    @Column(name = "INSPEC_ID")
    private Integer inspecId;

    @Column(name = "PROV_WIL_ID")
    private Integer provWilId;

    @Column(name = "NOM_ABREGE")
    private String nomAbrege;

    @Column(name = "CLASSE")
    private Character classe;

    @Column(name = "DESIGN_UNT")
    private String designUnt;


    @Column(name = "ADR_UNT")
    private String adrUnt;

    @Column(name = "BP_UNT")
    private String bpUnt;

    @Column(name = "TEL_UNT")
    private String telUnt;

    @Column(name = "FAX_UNT")
    private String faxUnt;

    @Column(name = "TLEX_UNT")
    private String tlexUnt;

    @Column(name = "DU_SERVICE_DU_MAT")
    private Character duServiceDuMat;

    @Column(name = "INFORMATISE")
    private Character informatise;

    @Column(name = "CODE_ECA")
    private String codeEca;

    @Column(name = "ZONE")
    private String zone;

    @Column(name = "UNT_REP")
    private Long untRep;

    @Column(name = "PLACE_ARME_ID")
    private Long placeArmeId;

    @Column(name = "S_SECTEUR_ID")
    private Long sSecteurId;

    @Column(name = "SECTEUR_ID")
    private Long secteurId;
    @Column(name = "CODE_MDB")
    private Long codeMdb;

    @Column(name = "CODE_B4")
    private String codeB4;

    @Column(name = "UNT_APP")
    private String untApp;

    @Column(name = "UNT_GEST")
    private String untGest;

    @Column(name = "UNT_MUN")
    private String untMun;

    @Column(name = "UNT_CARB")
    private String untCarb;

    @Column(name = "UNT_OPT")
    private String untOpt;

    @Column(name = "ECHELON")
    private String echelon;

    @Column(name = "CODE_OPT")
    private String codeOpt;

    @Column(name = "APPROS")
    private Integer appros;

    @Column(name = "CHEMIN_ETAT")
    private String cheminEtat;

    @Column(name = "ID_MUNIT")
    private Long idMunit;

    @Column(name = "ID_ARMT")
    private Long idArmt;

    @Column(name = "NATURE_UNITE")
    private Integer natureUnite;

    @Column(name = "TONAGE")
    private Long tonage;

    @Column(name = "UNITE_SECURITE")
    private Long uniteSecurite;

    @Column(name = "UNITE_FEU")
    private Long uniteFeu;

    @Column(name = "GENRE")
    private String genre;

    @Column(name = "UNT_AR_MERE")
    private Long untArMere;

    @Column(name = "DISSOUTE")
    private String dissoute;

    @Column(name = "OBS")
    private String obs;

    @Column(name = "CREER")
    private Long creer;

    @Column(name = "DESIGNATION_COMPLET")
    private String designationComplet;

    @Column(name = "UNITE_ODOO")
    private String uniteOdoo;

    @Column(name = "TYPE_UNITE")
    private String typeUnite;

    @Column(name = "UNT_GEST_LUB")
    private Long untGestLub;

    @Column(name = "QTE_VIGNETTES_HUILE")
    private BigDecimal qteVignettesHuile;

    @Column(name = "DATE_CREATION")
    private Date dateCreation;

    @Column(name = "ACT_CREATION")
    private Integer actCreation;

    @Column(name = "DATE_CLASSEMENT")
    private Date dateClassement;

    @Column(name = "ACT_CLASSEMENT")
    private Integer actClassement;


    // Ajoutez d'autres colonnes selon votre structure de table

    // Getters and setters pour les champs

    public Long getUntId() {
        return untId;
    }

    public void setUntId(Long untId) {
        this.untId = untId;
    }

    public Integer getTypeOeId() {
        return typeOeId;
    }

    public void setTypeOeId(Integer typeOeId) {
        this.typeOeId = typeOeId;
    }

    public Long getUntUntId() {
        return untUntId;
    }

    public void setUntUntId(Long untUntId) {
        this.untUntId = untUntId;
    }

    public Integer getInspecId() {
        return inspecId;
    }

    public void setInspecId(Integer inspecId) {
        this.inspecId = inspecId;
    }

    public Integer getProvWilId() {
        return provWilId;
    }

    public void setProvWilId(Integer provWilId) {
        this.provWilId = provWilId;
    }

    public String getNomAbrege() {
        return nomAbrege;
    }

    public void setNomAbrege(String nomAbrege) {
        this.nomAbrege = nomAbrege;
    }

    public Character getClasse() {
        return classe;
    }

    public void setClasse(Character classe) {
        this.classe = classe;
    }

    public String getDesignUnt() {
        return designUnt;
    }

    public void setDesignUnt(String designUnt) {
        this.designUnt = designUnt;
    }

    public String getAdrUnt() {
        return adrUnt;
    }

    public void setAdrUnt(String adrUnt) {
        this.adrUnt = adrUnt;
    }

    public String getBpUnt() {
        return bpUnt;
    }

    public void setBpUnt(String bpUnt) {
        this.bpUnt = bpUnt;
    }

    public String getTelUnt() {
        return telUnt;
    }

    public void setTelUnt(String telUnt) {
        this.telUnt = telUnt;
    }

    public String getFaxUnt() {
        return faxUnt;
    }

    public void setFaxUnt(String faxUnt) {
        this.faxUnt = faxUnt;
    }

    public String getTlexUnt() {
        return tlexUnt;
    }

    public void setTlexUnt(String tlexUnt) {
        this.tlexUnt = tlexUnt;
    }

    public Character getDuServiceDuMat() {
        return duServiceDuMat;
    }

    public void setDuServiceDuMat(Character duServiceDuMat) {
        this.duServiceDuMat = duServiceDuMat;
    }

    public Character getInformatise() {
        return informatise;
    }

    public void setInformatise(Character informatise) {
        this.informatise = informatise;
    }

    public String getCodeEca() {
        return codeEca;
    }

    public void setCodeEca(String codeEca) {
        this.codeEca = codeEca;
    }

    public String getZone() {
        return zone;
    }

    public void setZone(String zone) {
        this.zone = zone;
    }

    public Long getUntRep() {
        return untRep;
    }

    public void setUntRep(Long untRep) {
        this.untRep = untRep;
    }

    public Long getPlaceArmeId() {
        return placeArmeId;
    }

    public void setPlaceArmeId(Long placeArmeId) {
        this.placeArmeId = placeArmeId;
    }

    public Long getsSecteurId() {
        return sSecteurId;
    }

    public void setsSecteurId(Long sSecteurId) {
        this.sSecteurId = sSecteurId;
    }

    public Long getSecteurId() {
        return secteurId;
    }

    public void setSecteurId(Long secteurId) {
        this.secteurId = secteurId;
    }

    public Long getCodeMdb() {
        return codeMdb;
    }

    public void setCodeMdb(Long codeMdb) {
        this.codeMdb = codeMdb;
    }

    public String getCodeB4() {
        return codeB4;
    }

    public void setCodeB4(String codeB4) {
        this.codeB4 = codeB4;
    }

    public String getUntApp() {
        return untApp;
    }

    public void setUntApp(String untApp) {
        this.untApp = untApp;
    }

    public String getUntGest() {
        return untGest;
    }

    public void setUntGest(String untGest) {
        this.untGest = untGest;
    }

    public String getUntMun() {
        return untMun;
    }

    public void setUntMun(String untMun) {
        this.untMun = untMun;
    }

    public String getUntCarb() {
        return untCarb;
    }

    public void setUntCarb(String untCarb) {
        this.untCarb = untCarb;
    }

    public String getUntOpt() {
        return untOpt;
    }

    public void setUntOpt(String untOpt) {
        this.untOpt = untOpt;
    }

    public String getEchelon() {
        return echelon;
    }

    public void setEchelon(String echelon) {
        this.echelon = echelon;
    }

    public String getCodeOpt() {
        return codeOpt;
    }

    public void setCodeOpt(String codeOpt) {
        this.codeOpt = codeOpt;
    }

    public Integer getAppros() {
        return appros;
    }

    public void setAppros(Integer appros) {
        this.appros = appros;
    }

    public String getCheminEtat() {
        return cheminEtat;
    }

    public void setCheminEtat(String cheminEtat) {
        this.cheminEtat = cheminEtat;
    }

    public Long getIdMunit() {
        return idMunit;
    }

    public void setIdMunit(Long idMunit) {
        this.idMunit = idMunit;
    }

    public Long getIdArmt() {
        return idArmt;
    }

    public void setIdArmt(Long idArmt) {
        this.idArmt = idArmt;
    }

    public Integer getNatureUnite() {
        return natureUnite;
    }

    public void setNatureUnite(Integer natureUnite) {
        this.natureUnite = natureUnite;
    }

    public Long getTonage() {
        return tonage;
    }

    public void setTonage(Long tonage) {
        this.tonage = tonage;
    }

    public Long getUniteSecurite() {
        return uniteSecurite;
    }

    public void setUniteSecurite(Long uniteSecurite) {
        this.uniteSecurite = uniteSecurite;
    }

    public Long getUniteFeu() {
        return uniteFeu;
    }

    public void setUniteFeu(Long uniteFeu) {
        this.uniteFeu = uniteFeu;
    }

    public String getGenre() {
        return genre;
    }

    public void setGenre(String genre) {
        this.genre = genre;
    }

    public Long getUntArMere() {
        return untArMere;
    }

    public void setUntArMere(Long untArMere) {
        this.untArMere = untArMere;
    }

    public String getDissoute() {
        return dissoute;
    }

    public void setDissoute(String dissoute) {
        this.dissoute = dissoute;
    }

    public String getObs() {
        return obs;
    }

    public void setObs(String obs) {
        this.obs = obs;
    }

    public Long getCreer() {
        return creer;
    }

    public void setCreer(Long creer) {
        this.creer = creer;
    }

    public String getDesignationComplet() {
        return designationComplet;
    }

    public void setDesignationComplet(String designationComplet) {
        this.designationComplet = designationComplet;
    }

    public String getUniteOdoo() {
        return uniteOdoo;
    }

    public void setUniteOdoo(String uniteOdoo) {
        this.uniteOdoo = uniteOdoo;
    }

    public String getTypeUnite() {
        return typeUnite;
    }

    public void setTypeUnite(String typeUnite) {
        this.typeUnite = typeUnite;
    }

    public Long getUntGestLub() {
        return untGestLub;
    }

    public void setUntGestLub(Long untGestLub) {
        this.untGestLub = untGestLub;
    }

    public BigDecimal getQteVignettesHuile() {
        return qteVignettesHuile;
    }

    public void setQteVignettesHuile(BigDecimal qteVignettesHuile) {
        this.qteVignettesHuile = qteVignettesHuile;
    }

    public Date getDateCreation() {
        return dateCreation;
    }

    public void setDateCreation(Date dateCreation) {
        this.dateCreation = dateCreation;
    }

    public Integer getActCreation() {
        return actCreation;
    }

    public void setActCreation(Integer actCreation) {
        this.actCreation = actCreation;
    }

    public Date getDateClassement() {
        return dateClassement;
    }

    public void setDateClassement(Date dateClassement) {
        this.dateClassement = dateClassement;
    }

    public Integer getActClassement() {
        return actClassement;
    }

    public void setActClassement(Integer actClassement) {
        this.actClassement = actClassement;
    }
    // Implémentez les autres getters et setters pour les autres colonnes
}
