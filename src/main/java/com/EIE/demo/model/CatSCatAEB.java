package com.EIE.demo.model;


import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.GeneratedValue;
import javax.persistence.Column;
import javax.persistence.Table;
import javax.persistence.ForeignKey;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity
@Table(name = "CAT_S_CAT_AEB", schema = "AEB")
public class CatSCatAEB {

    @Id
    @GeneratedValue
    @Column(name = "CAT_S_CAT_AEB_ID", nullable = false)
    private Long catSCatAEBId;

    @ManyToOne
    @JoinColumn(name = "CAT_ID", referencedColumnName = "CAT_ID")
    private CategorieAEB catId;

    @ManyToOne
    @JoinColumn(name = "S_CAT_ID", referencedColumnName = "S_CAT_ID")
    private SCategorieAEB sCatId;

    // Constructors, getters, and setters

    public Long getCatSCatAEBId() {
        return catSCatAEBId;
    }

    public void setCatSCatAEBId(Long catSCatAEBId) {
        this.catSCatAEBId = catSCatAEBId;
    }

    public CategorieAEB getCatId() {
        return catId;
    }

    public void setCatId(CategorieAEB catId) {
        this.catId = catId;
    }

    public SCategorieAEB getsCatId() {
        return sCatId;
    }

    public void setsCatId(SCategorieAEB sCatId) {
        this.sCatId = sCatId;
    }
}
