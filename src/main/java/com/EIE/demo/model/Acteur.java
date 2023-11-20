package com.EIE.demo.model;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "ACTEUR", schema = "SEC")
public class Acteur {

    @Id
    @Column(name = "ACTEUR_ID", nullable = false)
    private Long acteurId;

    @Column(name = "GRADE_ID")
    private Integer gradeId;

    @Column(name = "UNT_ID")
    private Long untId;

    @Column(name = "NOM", nullable = false, length = 25)
    private String nom;

    @Column(name = "PRENOM", nullable = false, length = 25)
    private String prenom;

    @Column(name = "DATE_DE_NAISSANCE")
    private Date dateDeNaissance;

    @Column(name = "LIEU_DE_NAISSANCE", length = 25)
    private String lieuDeNaissance;

    @Column(name = "NOM_UTILISATEUR", nullable = false, length = 25)
    private String nomUtilisateur;

    @Column(name = "MOT_DE_PASS", length = 100)
    private String motDePasse;

    @Column(name = "BASE_USER", nullable = false, length = 25)
    private String baseUser;

    @Column(name = "CIVILITE", length = 4)
    private String civilite;

    @Column(name = "MATRICULE", length = 12)
    private String matricule;

    @Column(name = "ACTIVE", length = 1, nullable = false)
    private String active;

    @Column(name = "DEPOT_ID")
    private Long depotId;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "profilId")
    private Profil profil;

    // Constructors, getters, and setters

    public Long getActeurId() {
        return acteurId;
    }

    public void setActeurId(Long acteurId) {
        this.acteurId = acteurId;
    }

    public Integer getGradeId() {
        return gradeId;
    }

    public void setGradeId(Integer gradeId) {
        this.gradeId = gradeId;
    }

    public Long getUntId() {
        return untId;
    }

    public void setUntId(Long untId) {
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

    public Date getDateDeNaissance() {
        return dateDeNaissance;
    }

    public void setDateDeNaissance(Date dateDeNaissance) {
        this.dateDeNaissance = dateDeNaissance;
    }

    public String getLieuDeNaissance() {
        return lieuDeNaissance;
    }

    public void setLieuDeNaissance(String lieuDeNaissance) {
        this.lieuDeNaissance = lieuDeNaissance;
    }

    public String getNomUtilisateur() {
        return nomUtilisateur;
    }

    public void setNomUtilisateur(String nomUtilisateur) {
        this.nomUtilisateur = nomUtilisateur;
    }

    public String getMotDePasse() {
        return motDePasse;
    }

    public void setMotDePasse(String motDePasse) {
        this.motDePasse = motDePasse;
    }

    public String getBaseUser() {
        return baseUser;
    }

    public void setBaseUser(String baseUser) {
        this.baseUser = baseUser;
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

    public String getActive() {
        return active;
    }

    public void setActive(String active) {
        this.active = active;
    }

    public Long getDepotId() {
        return depotId;
    }

    public void setDepotId(Long depotId) {
        this.depotId = depotId;
    }

    public Profil getProfil() {
        return profil;
    }

    public void setProfil(Profil profil) {
        this.profil = profil;
    }
}

