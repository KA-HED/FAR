package com.EIE.demo.model;
import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "FICHE_AEB"/*, schema = "AEB"*/)
public class FicheAEB {

    @Id
    @Column(name = "DOC_ID")
    private Long docId;

    @Column(name = "NAME")
    private String name;

    @Lob
    @Column(name = "DOC")
    private byte[] doc;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "N_NOMENCL")
    private Art nomencl;

    @Column(name = "DATE_FICHE")
    private Date dateFiche;

    @Column(name = "OBS_FICHE")
    private String obsFiche;

    // Ajouter les constructeurs, les getters et les setters

    // Vous pouvez également définir des relations entre les tables ici si nécessaire avec des annotations comme @ManyToOne, @OneToMany, etc.
}
