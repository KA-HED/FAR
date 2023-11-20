package com.EIE.demo.model;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Column;
import javax.persistence.Table;
import javax.persistence.ManyToOne;
import javax.persistence.JoinColumn;

@Entity
@Table(name = "PROFILE", schema = "SEC")
public class Profile {

    @Id
    @Column(name = "PROFILE_ID", nullable = false)
    private Long profileId;

    @ManyToOne
    @JoinColumn(name = "PROFILE_SUPERIEUR_ID", referencedColumnName = "PROFILE_ID")
    private Profile profileSuperieur;

    @Column(name = "PROFILE", nullable = false, length = 30)
    private String profile;

    @Column(name = "DESCRIPTION", length = 80)
    private String description;

    @Column(name = "PROFILE_BASE", nullable = false, length = 30)
    private String profileBase;

    // Constructors, getters, and setters

    public Long getProfileId() {
        return profileId;
    }

    public void setProfileId(Long profileId) {
        this.profileId = profileId;
    }

    public Profile getProfileSuperieur() {
        return profileSuperieur;
    }

    public void setProfileSuperieur(Profile profileSuperieur) {
        this.profileSuperieur = profileSuperieur;
    }

    public String getProfile() {
        return profile;
    }

    public void setProfile(String profile) {
        this.profile = profile;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getProfileBase() {
        return profileBase;
    }

    public void setProfileBase(String profileBase) {
        this.profileBase = profileBase;
    }
}
