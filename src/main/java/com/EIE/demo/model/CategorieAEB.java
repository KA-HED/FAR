package com.EIE.demo.model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.GeneratedValue;
import javax.persistence.Column;
import javax.persistence.Table;
import java.math.BigDecimal;

@Entity
@Table(name = "CATEGORIE_AEB", schema = "AEB")
public class CategorieAEB {

    @Id
    @GeneratedValue
    @Column(name = "CAT_ID", nullable = false)
    private Long catId;

    @Column(name = "DESIG_CAT", nullable = false, length = 50)
    private String desigCat;

    @Column(name = "ABR_CAT", length = 10)
    private String abrCat;

    @Column(name = "CODE_B4", length = 2)
    private String codeB4;

    @Column(name = "ORDRE_IMP")
    private Integer ordreImp;

    @Column(name = "CP", precision = 10, scale = 2)
    private BigDecimal cp;

    // Constructors, getters, and setters

    public Long getCatId() {
        return catId;
    }

    public void setCatId(Long catId) {
        this.catId = catId;
    }

    public String getDesigCat() {
        return desigCat;
    }

    public void setDesigCat(String desigCat) {
        this.desigCat = desigCat;
    }

    public String getAbrCat() {
        return abrCat;
    }

    public void setAbrCat(String abrCat) {
        this.abrCat = abrCat;
    }

    public String getCodeB4() {
        return codeB4;
    }

    public void setCodeB4(String codeB4) {
        this.codeB4 = codeB4;
    }

    public Integer getOrdreImp() {
        return ordreImp;
    }

    public void setOrdreImp(Integer ordreImp) {
        this.ordreImp = ordreImp;
    }

    public BigDecimal getCp() {
        return cp;
    }

    public void setCp(BigDecimal cp) {
        this.cp = cp;
    }


}

