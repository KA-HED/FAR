package com.EIE.demo.model;
import org.springframework.data.annotation.PersistenceConstructor;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "DETENTEUR"/*, schema = "AEB"*/)
public class Detenteur {
    // Constructors, getters, and setters
    private String value;
    @PersistenceConstructor
    public Detenteur(String value) {
        this.detenteurId =  Long.parseLong(value);
    }
    public Detenteur() {}
    @Id
    @Column(name = "DETENTEUR_ID", nullable = false)
    private Long detenteurId;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "GRADE_ID")
    private Grade grade;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "UNT_ID")
    private UnitesCriblees untId;

    @Column(name = "NOM", nullable = false)
    private String nom;

    @Column(name = "PRENOM")
    private String prenom;

    @Column(name = "CIVILITE")
    private String civilite;

    @Column(name = "MATRICULE")
    private String matricule;

    @Column(name = "MILITAIRE")
    private String militaire;

    @Column(name = "OBS_DETENTEUR")
    private String obsDetenteur;

    @Column(name = "SCE_DETENTEUR_ID")
    private Long sceDetenteurId;

    @Column(name = "DATE_NOM")
    private Date dateNom;

    @Column(name = "ACTEUR_OP")
    private Long acteurOp;

    @Column(name = "ACTEUR_MOD_OP")
    private Long acteurModOp;

    @Column(name = "DATE_OP")
    private Date dateOp;

    @Column(name = "DATE_MOD_OP")
    private Date dateModOp;

    @Column(name = "GROUPE_DET_ID")
    private Integer groupeDetId;


    // You can also include constructors and additional methods as needed

    public String getValue() {
        return value;
    }

    public void setValue(String value) {
        this.value = value;
    }

    public Long getDetenteurId() {
        return detenteurId;
    }

    public void setDetenteurId(Long detenteurId) {
        this.detenteurId = detenteurId;
    }

    public Grade getGrade() {
        return grade;
    }

    public void setGrade(Grade grade) {
        this.grade = grade;
    }

    public UnitesCriblees getUntId() {
        return untId;
    }

    public void setUntId(UnitesCriblees untId) {
        this.untId = untId;
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public String getPrenom() {
        return prenom;
    }

    public void setPrenom(String prenom) {
        this.prenom = prenom;
    }

    public String getCivilite() {
        return civilite;
    }

    public void setCivilite(String civilite) {
        this.civilite = civilite;
    }

    public String getMatricule() {
        return matricule;
    }

    public void setMatricule(String matricule) {
        this.matricule = matricule;
    }

    public String getMilitaire() {
        return militaire;
    }

    public void setMilitaire(String militaire) {
        this.militaire = militaire;
    }

    public String getObsDetenteur() {
        return obsDetenteur;
    }

    public void setObsDetenteur(String obsDetenteur) {
        this.obsDetenteur = obsDetenteur;
    }

    public Long getSceDetenteurId() {
        return sceDetenteurId;
    }

    public void setSceDetenteurId(Long sceDetenteurId) {
        this.sceDetenteurId = sceDetenteurId;
    }

    public Date getDateNom() {
        return dateNom;
    }

    public void setDateNom(Date dateNom) {
        this.dateNom = dateNom;
    }

    public Long getActeurOp() {
        return acteurOp;
    }

    public void setActeurOp(Long acteurOp) {
        this.acteurOp = acteurOp;
    }

    public Long getActeurModOp() {
        return acteurModOp;
    }

    public void setActeurModOp(Long acteurModOp) {
        this.acteurModOp = acteurModOp;
    }

    public Date getDateOp() {
        return dateOp;
    }

    public void setDateOp(Date dateOp) {
        this.dateOp = dateOp;
    }

    public Date getDateModOp() {
        return dateModOp;
    }

    public void setDateModOp(Date dateModOp) {
        this.dateModOp = dateModOp;
    }

    public Integer getGroupeDetId() {
        return groupeDetId;
    }

    public void setGroupeDetId(Integer groupeDetId) {
        this.groupeDetId = groupeDetId;
    }
}
