package com.EIE.demo.model;
import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "LIGNE_M14", schema = "AEB")
public class LigneM14 {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "L_M14_ID")
    private Long lM14Id;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "M14_ID")
    private M14 m14;

    @Column(name = "EXECUTION")
    private String execution;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "N_NOMENCL")
    private Art art;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "POS_EXP_ID")
    private Pos posExpId;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "POS_DEST_ID")
    private Pos posDestId;

    @Column(name = "PU_EXP")
    private Double puExp;

    @Column(name = "PU_DEST")
    private Double puDest;

    @Column(name = "UNT_COMPT_ID")
    private Integer untComptId;

    @Column(name = "EMPL_EXP")
    private String emplExp;

    @Column(name = "EMPL_DEST")
    private String emplDest;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "MAGASINIER_EXP")
    private GMag magasinierExp;

    @Column(name = "DATE_MAG_EXP")
    private Date dateMagExp;

    @Column(name = "DATE_FICHISTE_DEST1")
    private Date dateFichisteDest1;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "FICHISTE_DEST_1")
    private FicheAEB fichisteDest1;

    @Column(name = "DATE_MAG_DEST")
    private Date dateMagDest;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "MAGASINIER_DEST")
    private GMag magasinierDest;

    @Column(name = "M6_DEST")
    private Long m6Dest;

    @Column(name = "STK_A_M_DEST")
    private Double stkAMDest;

    @Column(name = "QUANT_DEST")
    private Double quantDest;

    @Column(name = "QUANT_EXP")
    private Double quantExp;

    @Column(name = "OBSERVATION_DEST")
    private String observationDest;

    @Column(name = "OBSERVATION_EXP")
    private String observationExp;

    @Column(name = "DECOMPTE_EXPED")
    private Double decompteExped;

    @Column(name = "DECOMPTE_DEST")
    private Double decompteDest;

    @Column(name = "STK_A_M_EXP")
    private Double stkAMExp;

    @Column(name = "M1_EXP")
    private Long m1Exp;

    @Column(name = "M1_DEST")
    private Long m1Dest;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "UNT_EXP")
    private UnitesCriblees untExp;

    @Column(name = "NOMINERALOGIQUE", nullable = false)
    private String nomineralogique;

    @Column(name = "NUM_CHASSIS", nullable = false)
    private String numChassis;

    @Column(name = "MODELE_ID")
    private Long modeleId;

    @Column(name = "M6_EXP")
    private Long m6Exp;

}
