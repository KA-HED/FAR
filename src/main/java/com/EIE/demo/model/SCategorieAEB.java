package com.EIE.demo.model;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import lombok.RequiredArgsConstructor;
import org.springframework.data.annotation.PersistenceConstructor;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.GeneratedValue;
import javax.persistence.Column;
import javax.persistence.Table;
import java.io.Serializable;
/*
@EqualsAndHashCode(of = "id")
@NoArgsConstructor(access = AccessLevel.PROTECTED)
* */
@Entity
@Table(name = "S_CATEGORIE_AEB"/*, schema = "AEB"*/)
//@JsonIgnoreProperties({ "hibernateLazyInitializer", "handler" })
//@RequiredArgsConstructor
public class SCategorieAEB  implements Serializable {

    @Id
    @GeneratedValue
    @Column(name = "S_CAT_ID", nullable = false)
    private Long sCatId;

    @Column(name = "DESIG_S_CAT", nullable = false, length = 200)
    private String desigSCat;

    @Column(name = "ABR_S_CAT", length = 50)
    private String abrSCat;

    @Column(name = "CODE_B4", length = 2)
    private String codeB4;

    private String value;

    @PersistenceConstructor
    public SCategorieAEB(String value) {
        this.sCatId =  Long.parseLong(value);
    }
    public SCategorieAEB() {
        // Constructeur par défaut (sans paramètres)
    }

    public Long getsCatId() {
        return sCatId;
    }

    public void setsCatId(Long sCatId) {
        this.sCatId = sCatId;
    }

    public String getDesigSCat() {
        return desigSCat;
    }

    public void setDesigSCat(String desigSCat) {
        this.desigSCat = desigSCat;
    }

    public String getAbrSCat() {
        return abrSCat;
    }

    public void setAbrSCat(String abrSCat) {
        this.abrSCat = abrSCat;
    }

    public String getCodeB4() {
        return codeB4;
    }

    public void setCodeB4(String codeB4) {
        this.codeB4 = codeB4;
    }
}
