package com.EIE.demo.dao;

import com.EIE.demo.model.Acteur;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface ActeurRepository extends JpaRepository<Acteur, Long> {
    // You can add custom query methods here if needed.

    @Query("from Acteur fp  where fp.nomUtilisateur=:a1 and fp.active=1 order by fp.acteurId DESC  ")
    public Acteur siExiste (@Param("a1") String a1);

    @Query("from Acteur fp  where fp.nomUtilisateur=:a1 and fp.active=1 order by fp.acteurId DESC  ")
    public Acteur getCompteConnected (@Param("a1") String a1);


    @Query("from Acteur  where active=1 order by acteurId  DESC  ")
    public List<Acteur> getAllCompte ();


    @Query("from Acteur fp  where fp.acteurId=:id  ")
    public Acteur getOne (@Param("id") Long id);

}
