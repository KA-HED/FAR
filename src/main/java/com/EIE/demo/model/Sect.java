package com.EIE.demo.model;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Column;
import javax.persistence.Table;

@Entity
@Table(name = "SECT", schema = "AEB")
public class Sect {

    @Id
    @Column(name = "SECT_ID", nullable = false)
    private Long sectId;

    @Column(name = "NOM_SECT", length = 40)
    private String nomSect;

    // Constructors, getters, and setters

    public Long getSectId() {
        return sectId;
    }

    public void setSectId(Long sectId) {
        this.sectId = sectId;
    }

    public String getNomSect() {
        return nomSect;
    }

    public void setNomSect(String nomSect) {
        this.nomSect = nomSect;
    }
}
