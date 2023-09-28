package com.EIE.demo.model;

import com.fasterxml.jackson.annotation.JsonAutoDetect;
import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import javax.persistence.*;

import org.hibernate.annotations.CreationTimestamp;

import java.io.Serializable;
import java.time.LocalDateTime;
import java.util.Date;


@Entity
@org.hibernate.annotations.Proxy(lazy = true)
@Table(name = "compte")

@JsonIgnoreProperties({ "hibernateLazyInitializer", "handler" })
@JsonAutoDetect
public class Compte  implements Serializable {


	public int getCompteId() {
		return compteId;
	}

	public void setCompteId(int compteId) {
		this.compteId = compteId;
	}

	public String getNom() {
		return nom;
	}

	public void setNom(String nom) {
		this.nom = nom;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getCommission() {
		return commission;
	}

	public void setCommission(String commission) {
		this.commission = commission;
	}

	public String getDepot() {
		return depot;
	}

	public void setDepot(String depot) {
		this.depot = depot;
	}

	public Profil getProfil() {
		return profil;
	}

	public void setProfil(Profil profil) {
		this.profil = profil;
	}



	public Compte() {

	}

	@Id
    @GeneratedValue (strategy= GenerationType. IDENTITY)
    @Column (name="compteId")
    private int compteId;

	@Column(name = "nom", nullable = true, columnDefinition = "NVARCHAR(255)")
	private String nom;

	@Column(name = "emailRecup", nullable = true, columnDefinition = "NVARCHAR(255)")
	private String emailRecup;

	@Column(name = "chequer", nullable = true, columnDefinition = "NVARCHAR(255)")
	private String chequer;

	public String getEmailRecup() {
		return emailRecup;
	}

	public void setEmailRecup(String emailRecup) {
		this.emailRecup = emailRecup;
	}

	@Column(name = "email", nullable = true, columnDefinition = "NVARCHAR(255)")
	private String email;

	@Column(name = "auto_nv", nullable = true, columnDefinition = "NVARCHAR(255)")
	private String auto_nv;

	@Column(name = "tel", nullable = true, columnDefinition = "NVARCHAR(255)")
	private String tel;
	@Column(name = "deleted", nullable = true, columnDefinition = "NVARCHAR(255)")
	private String deleted;

	@Column(name = "interim", nullable = true, columnDefinition = "NVARCHAR(255)")
	private String interim;

	@Column(name = "active", nullable = true)
	private boolean active;

	@JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "dd/mm/yyyy")
	@Column(name = "dateDebut", nullable = true)
	private Date dateDebut;

	@JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "dd/mm/yyyy")
	@Column(name = "dateFin", nullable = true)
	private Date dateFin;

	@Column(name = "password", nullable = true, columnDefinition = "NVARCHAR(255)")
	private String password;

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getDeleted() {
		return deleted;
	}

	public void setDeleted(String deleted) {
		this.deleted = deleted;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	@Column(name = "commission", nullable = true, columnDefinition = "NVARCHAR(255)")
	private String commission;

	@Column(name = "depot", nullable = true, columnDefinition = "NVARCHAR(255)")
	private String depot;

	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "profilId")
	private Profil profil;

	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "regionId")
	private Region region;

	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "id_Poste")
	private Poste poste;

	@Column(name = "typeregion", nullable = true)
	private String typeregion;

	public Poste getPoste() {
		return poste;
	}

	public void setPoste(Poste poste) {
		this.poste = poste;
	}


	public Date getDeleteDateTime() {
		return deleteDateTime;
	}

	public void setDeleteDateTime(Date deleteDateTime) {
		this.deleteDateTime = deleteDateTime;
	}
	@Column
	@CreationTimestamp
	private LocalDateTime createDateTime;


	public LocalDateTime getCreateDateTime() {
		return createDateTime;
	}

	public void setCreateDateTime(LocalDateTime createDateTime) {
		this.createDateTime = createDateTime;
	}

	
	@Column
	private Date deleteDateTime;


	public Region getRegion() {
		return region;
	}

	public void setRegion(Region region) {
		this.region = region;
	}

	public String getTyperegion() {
		return typeregion;
	}

	public void setTyperegion(String typeregion) {
		this.typeregion = typeregion;
	}

	public
	String getChequer() {
		return chequer;
	}

	public
	void setChequer(String chequer) {
		this.chequer = chequer;
	}

	public
	String getAuto_nv() {
		return auto_nv;
	}

	public
	void setAuto_nv(String auto_nv) {
		this.auto_nv = auto_nv;
	}

	public
	Date getDateDebut() {
		return dateDebut;
	}

	public
	void setDateDebut(Date dateDebut) {
		this.dateDebut = dateDebut;
	}

	public
	Date getDateFin() {
		return dateFin;
	}

	public
	void setDateFin(Date dateFin) {
		this.dateFin = dateFin;
	}

	public
	String getInterim() {
		return interim;
	}

	public
	void setInterim(String interim) {
		this.interim = interim;
	}

	public
	boolean isActive() {
		return active;
	}

	public
	void setActive(boolean active) {
		this.active = active;
	}
}
