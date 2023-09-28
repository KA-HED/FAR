package com.EIE.demo.model;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Date;

@Entity
@org.hibernate.annotations.Proxy(lazy = true)
@Table(name = "Ip")

@JsonIgnoreProperties({ "hibernateLazyInitializer", "handler" })
public class IP implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Id
    @GeneratedValue (strategy= GenerationType. IDENTITY)
    @Column (name="ipId")
    private int ipId;

	@Column(name = "deleteDateTime", nullable = true)
	private Date deleteDateTime;

	@Column(name = "AdresseIp", nullable = true, columnDefinition = "NVARCHAR(255)")
	private String AdresseIp;

	@Column(name = "dateIp", nullable = true, columnDefinition = "NVARCHAR(255)")
	private Date dateIp;

	public int getIpId() {
		return ipId;
	}

	public void setIpId(int ipId) {
		this.ipId = ipId;
	}

	public Date getDeleteDateTime() {
		return deleteDateTime;
	}

	public void setDeleteDateTime(Date deleteDateTime) {
		this.deleteDateTime = deleteDateTime;
	}

	public String getAdresseIp() {
		return AdresseIp;
	}

	public void setAdresseIp(String adresseIp) {
		AdresseIp = adresseIp;
	}

	public Date getDateIp() {
		return dateIp;
	}

	public void setDateIp(Date dateIp) {
		this.dateIp = dateIp;
	}
}
