package com.EIE.demo.model;
import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "LIGNE_Compte_Rendu"/*, schema = "AEB"*/)
public class LigneCompte_Rendu {

    @Id
    @Column(name = "LIGNE_Compte_Rendu_ID", nullable = false)
    private Long ligneOmId;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "Compte_Rendu_ID", nullable = false)
    private Compte_Rendu compte_Rendu;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "ligneOm", nullable = false)
    private LigneOm ligneOm;

    public Long getLigneOmId() {
        return ligneOmId;
    }

    public void setLigneOmId(Long ligneOmId) {
        this.ligneOmId = ligneOmId;
    }

    public Compte_Rendu getCompte_Rendu() {
        return compte_Rendu;
    }

    public void setCompte_Rendu(Compte_Rendu compte_Rendu) {
        this.compte_Rendu = compte_Rendu;
    }

    public LigneOm getLigneOm() {
        return ligneOm;
    }

    public void setLigneOm(LigneOm ligneOm) {
        this.ligneOm = ligneOm;
    }
}
