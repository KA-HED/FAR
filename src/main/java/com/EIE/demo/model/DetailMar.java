package com.EIE.demo.model;
import javax.persistence.*;

@Entity
@Table(name = "DTAIL_MAR", schema = "AEB")
public class DetailMar {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "DETAIL_MAR_ID", nullable = false, unique = true)
    private Long detailMarId;

    @Column(name = "MAR_ID", nullable = false)
    private Long marId;

    @Column(name = "UNT_COMPT_ID", nullable = false)
    private Integer untComptId;

    @Column(name = "QUANT_ART", nullable = false)
    private Double quantArt;

    @Column(name = "P_UNIT_ART")
    private Double pUnitArt;

    @Column(name = "MONT_LIVRE_ART")
    private Double montLivreArt;

    @Column(name = "MONT_ENGAGE_ART")
    private Double montEngageArt;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "MODELE_ID", nullable = false)
    private ModeleAeb modeleId;

    // Getters and setters
    // Constructors
    // Other methods as needed

    // Relationships
    @ManyToOne
    @JoinColumn(name = "MAR_ID", insertable = false, updatable = false)
    private Mar mar;

    @ManyToOne
    @JoinColumn(name = "MODELE_ID", insertable = false, updatable = false)
    private ModeleAeb modeleAeb;

    // Getters and setters for relationships
}
