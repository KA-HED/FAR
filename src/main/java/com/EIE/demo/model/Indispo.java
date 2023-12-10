package com.EIE.demo.model;
import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "INDISPO", schema = "AEB")
public class Indispo {

    @Id
    @Column(name = "INDISPO_ID")
    private Long indispoId;

    @Column(name = "REF_INDISPO", nullable = false)
    private String refIndispo;

    @Column(name = "DATE_INDISPO", nullable = false)
    private Date dateIndispo;

    @Column(name = "ACT_ORDRE")
    private Integer actOrdre;

    @Column(name = "DATE_ORDRE")
    private Date dateOrdre;

    @Column(name = "ACT_RECEPTION")
    private Integer actReception;

    @Column(name = "DATE_RECEPTION")
    private String dateReception;

    @Column(name = "TO")
    private String to;

    @Column(name = "DGMAC")
    private String dgmac;

    @Column(name = "N_OM")
    private String nOm;

    @Column(name = "S")
    private String s;

    @Column(name = "N_TO")
    private String nTo;

    @Column(name = "TRAC_OM")
    private String tracOm;

    // Ajouter les constructeurs, les getters et les setters

    // Vous pouvez également définir des relations entre les tables ici si nécessaire avec des annotations comme @ManyToOne, @OneToMany, etc.
}
