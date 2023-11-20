package com.EIE.demo.model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Column;
import javax.persistence.Table;
import javax.persistence.ManyToOne;
import javax.persistence.JoinColumn;

@Entity
@Table(name = "TYPE_AEB", schema = "AEB")
public class TypeAEB {

    @Id
    @Column(name = "TYPE_ID", nullable = false)
    private Long typeId;

    @ManyToOne
    @JoinColumn(name = "MARQUE_ID", referencedColumnName = "MARQUE_ID", nullable = false)
    private MarqueAEB marque;

    @Column(name = "DESIG_TYPE", nullable = false, length = 50)
    private String desigType;

    @Column(name = "ABR_TYPE", length = 10)
    private String abrType;

    @Column(name = "CODE_B4", length = 2)
    private String codeB4;

    // Constructors, getters, and setters

    public Long getTypeId() {
        return typeId;
    }

    public void setTypeId(Long typeId) {
        this.typeId = typeId;
    }

    public MarqueAEB getMarque() {
        return marque;
    }

    public void setMarque(MarqueAEB marque) {
        this.marque = marque;
    }

    public String getDesigType() {
        return desigType;
    }

    public void setDesigType(String desigType) {
        this.desigType = desigType;
    }

    public String getAbrType() {
        return abrType;
    }

    public void setAbrType(String abrType) {
        this.abrType = abrType;
    }

    public String getCodeB4() {
        return codeB4;
    }

    public void setCodeB4(String codeB4) {
        this.codeB4 = codeB4;
    }
}
