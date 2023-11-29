package com.EIE.demo.model;
import javax.persistence.*;

@Entity
@Table(name = "ABC_DETENTEUR", schema = "AEB")
public class AbcDetenteur {

    @Id
    @Column(name = "DETENTEUR_ID", nullable = false)
    private Long detenteurId;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "GRADE_ID")
    private Grade grade;

    @Column(name = "UNT_ID")
    private Long untId;

    @Column(name = "NOM", nullable = false, length = 30)
    private String nom;

    @Column(name = "PRENOM", length = 25)
    private String prenom;

    @Column(name = "CIVILITE", length = 20)
    private String civilite;

    @Column(name = "MATRICULE", length = 12)
    private String matricule;

    @Column(name = "MILITAIRE", length = 1)
    private String militaire;

    @Column(name = "OBS_DETENTEUR", length = 100)
    private String obsDetenteur;

    // Constructors, getters, and setters


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
}
