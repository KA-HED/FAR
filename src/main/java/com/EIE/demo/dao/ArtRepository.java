package com.EIE.demo.dao;

import com.EIE.demo.model.Art;
import com.EIE.demo.model.SCategorieAEB;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface ArtRepository extends JpaRepository<Art, Long> {
    // You can add custom query methods here if needed.
    @Query(value ="select max( N_NOMENCL)+1 from ART", nativeQuery = true)
    Long getmaxid();

    @Query("from Art  where etat_om='Affecter' ")//and disponibilite='1'
    public List<Art> getAllArt_Affecter();


}
