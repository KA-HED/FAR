package com.EIE.demo.model;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.GeneratedValue;
import javax.persistence.Column;
import javax.persistence.Table;
import java.util.Date;

@Entity
@Table(name = "MARQUE_AEB", schema = "AEB")
public class MarqueAEB {

    @Id
    @GeneratedValue
    @Column(name = "MARQUE_ID", nullable = false)
    private Long marqueId;

    @Column(name = "DESI_MARQUE", nullable = false, length = 50)
    private String desiMarque;

    @Column(name = "ABR_MARQUE", length = 10)
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
