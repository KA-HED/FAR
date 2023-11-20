package com.EIE.demo.model;
import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "TED_AEB", schema = "AEB")
public class TedAeb {

    @Id
    @Column(name = "TED_AEB_ID", nullable = false)
    private Long tedAebId;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "CAT_ID", nullable = false)
    private CategorieAEB categorieAEB;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "S_CAT_ID", nullable = false)
    private SCategorieAEB sCategorieAEB;

    @Column(name = "DESIGNATION", nullable = false)
    private String designation;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "UNT_ID")
    private UnitesCriblees unitesCriblees;

    @Column(name = "DATE_OP")
    private Date dateOp;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "ACTEUR_OP")
    private Acteur acteurOp;

    @Column(name = "DATE_MOD_OP")
    private Date dateModOp;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "ACTEUR_MOD_OP")
    private Acteur acteurModOp;

    @Column(name = "QTE_TED", nullable = false, columnDefinition = "NUMBER(10,0) DEFAULT 0")
    private Long qteTed;

    // Getters and setters for the fields (omitted for brevity)

    public Long getTedAebId() {
        return tedAebId;
    }

    public void setTedAebId(Long tedAebId) {
        this.tedAebId = tedAebId;
    }

    public CategorieAEB getCategorieAEB() {
        return categorieAEB;
    }

    public void setCategorieAEB(CategorieAEB categorieAEB) {
        this.categorieAEB = categorieAEB;
    }

    public SCategorieAEB getsCategorieAEB() {
        return sCategorieAEB;
    }

    public void setsCategorieAEB(SCategorieAEB sCategorieAEB) {
        this.sCategorieAEB = sCategorieAEB;
    }

    public String getDesignation() {
        return designation;
    }

    public void setDesignation(String designation) {
        this.designation = designation;
    }

    public UnitesCriblees getUnitesCriblees() {
        return unitesCriblees;
    }

    public void setUnitesCriblees(UnitesCriblees unitesCriblees) {
        this.unitesCriblees = unitesCriblees;
    }

    public Date getDateOp() {
        return dateOp;
    }

    public void setDateOp(Date dateOp) {
        this.dateOp = dateOp;
    }

    public Acteur getActeurOp() {
        return acteurOp;
    }

    public void setActeurOp(Acteur acteurOp) {
        this.acteurOp = acteurOp;
    }

    public Date getDateModOp() {
        return dateModOp;
    }

    public void setDateModOp(Date dateModOp) {
        this.dateModOp = dateModOp;
    }

    public Acteur getActeurModOp() {
        return acteurModOp;
    }

    public void setActeurModOp(Acteur acteurModOp) {
        this.acteurModOp = acteurModOp;
    }

    public Long getQteTed() {
        return qteTed;
    }

    public void setQteTed(Long qteTed) {
        this.qteTed = qteTed;
    }


    // You can also include constructors and additional methods as needed
}
