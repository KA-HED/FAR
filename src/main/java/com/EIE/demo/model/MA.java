package com.EIE.demo.model;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Column;
import javax.persistence.Table;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity
@Table(name = "MA", schema = "AEB")
public class MA {

    @Id
    @Column(name = "MA_ID", nullable = false)
    private Long maId;
//    @Id
    @ManyToOne
    @JoinColumn(name = "CAT_ID", referencedColumnName = "CAT_ID")
    private CategorieAEB categorie;

    @Column(name = "DESIG_CAT", length = 50)
    private String desigCat;

    @ManyToOne
    @JoinColumn(name = "S_CAT_ID", referencedColumnName = "S_CAT_ID")
    private SCategorieAEB sCategorie;

    @Column(name = "DESIG_S_CAT", length = 50)
    private String desigSCat;

    @ManyToOne
    @JoinColumn(name = "MARQUE_ID", referencedColumnName = "MARQUE_ID", nullable = false)
    private MarqueAEB marque;

    @Column(name = "DESI_MARQUE", nullable = false, length = 50)
    private String desiMarque;

    @ManyToOne
    @JoinColumn(name = "TYPE_ID", referencedColumnName = "TYPE_ID")
    private TypeAEB  type;

    @Column(name = "DESIG_TYPE", length = 50)
    private String desigType;

    // Constructors, getters, and setters

}
