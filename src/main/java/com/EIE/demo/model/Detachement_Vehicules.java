package com.EIE.demo.model;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "Detachement_Vehicules"/*, schema = "AEB"*/)
public class Detachement_Vehicules {

    @Id
    @GeneratedValue
    @Column(name = "Detachement_Vehicules_ID", nullable = false)
    private Long marqueId;

    @Column(name = "DESI_Detachement_Vehicules", nullable = false, length = 50)
    private String desiMarque;

    @Column(name = "ABR_Detachement_Vehicules", length = 10)
    private String abrMarque;

    @Column(name = "CODE_B4", length = 2)
    private String codeB4;

    @Column(name = "DATE_MODIF")
    private Date dateModif;

    @Column(name = "V_TYPE_CHANGE", length = 20)
    private String vTypeChange;

    // Constructors, getters, and setters

    public Long getMarqueId() {
        return marqueId;
    }

    public void setMarqueId(Long marqueId) {
        this.marqueId = marqueId;
    }

    public String getDesiMarque() {
        return desiMarque;
    }

    public void setDesiMarque(String desiMarque) {
        this.desiMarque = desiMarque;
    }

    public String getAbrMarque() {
        return abrMarque;
    }

    public void setAbrMarque(String abrMarque) {
        this.abrMarque = abrMarque;
    }

    public String getCodeB4() {
        return codeB4;
    }

    public void setCodeB4(String codeB4) {
        this.codeB4 = codeB4;
    }

    public Date getDateModif() {
        return dateModif;
    }

    public void setDateModif(Date dateModif) {
        this.dateModif = dateModif;
    }

    public String getvTypeChange() {
        return vTypeChange;
    }

    public void setvTypeChange(String vTypeChange) {
        this.vTypeChange = vTypeChange;
    }
}
