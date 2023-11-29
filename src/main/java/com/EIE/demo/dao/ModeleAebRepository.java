package com.EIE.demo.dao;

import com.EIE.demo.model.ModeleAeb;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface ModeleAebRepository extends JpaRepository<ModeleAeb, Long> {
    // You can add custom query methods here if needed.
    @Query(value ="select case when ((max( MODELE_ID)+1) is null) then 1 else (max( MODELE_ID)+1) end from Modele_Aeb", nativeQuery = true)
    Long getmaxid();
}
