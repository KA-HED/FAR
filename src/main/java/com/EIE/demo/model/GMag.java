package com.EIE.demo.model;
import javax.persistence.*;

@Entity
@Table(name = "G_MAG", schema = "GEST_REP")
public class GMag {

    @Id
    @Column(name = "MAG_ID")
    private Long magId;

    @Column(name = "DESIGN_MAG", nullable = false)
    private String designMag;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "UNT_ID", nullable = false)
    private UnitesCriblees
            untId;

    @Column(name = "LIEUMAG")
    private String lieuMag;

    @Column(name = "CODE_ECA")
    private String codeEca;

    @Column(name = "DISSOUTE")
    private String dissoute;

    // Ajouter les constructeurs, les getters et les setters

    // Vous pouvez également définir des relations entre les tables ici si nécessaire avec des annotations comme @ManyToOne, @OneToMany, etc.
}
