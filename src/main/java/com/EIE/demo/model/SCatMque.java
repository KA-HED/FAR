package com.EIE.demo.model;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.GeneratedValue;
import javax.persistence.Column;
import javax.persistence.Table;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity
@Table(name = "S_CAT_MQUE"/*, schema = "AEB"*/)
public class SCatMque {

    @Id
    @GeneratedValue
    @Column(name = "S_CAT_MQUE_ID", nullable = false)
    private Long sCatMqueId;

    @ManyToOne
    @JoinColumn(name = "S_CAT_ID", referencedColumnName = "S_CAT_ID", nullable = false)
    private SCategorieAEB sCat;

    @ManyToOne
    @JoinColumn(name = "MARQUE_ID", referencedColumnName = "MARQUE_ID", nullable = false)
    private MarqueAEB marque;

    // Constructors, getters, and setters

    public Long getsCatMqueId() {
        return sCatMqueId;
    }

    public void setsCatMqueId(Long sCatMqueId) {
        this.sCatMqueId = sCatMqueId;
    }

    public SCategorieAEB getsCat() {
        return sCat;
    }

    public void setsCat(SCategorieAEB sCat) {
        this.sCat = sCat;
    }

    public MarqueAEB getMarque() {
        return marque;
    }

    public void setMarque(MarqueAEB marque) {
        this.marque = marque;
    }
}
