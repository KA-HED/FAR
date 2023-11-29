package com.EIE.demo.dao;

import com.EIE.demo.model.LigneOm;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface LigneOmRepository extends JpaRepository<LigneOm, Long> {
    // You can add custom query methods here if needed.
    @Query(value ="select case when ((max( LIGNE_OM_ID)+1) is null) then 1 else (max( LIGNE_OM_ID)+1) end from LIGNE_OM", nativeQuery = true)
    Long getmaxid();


    @Query("from LigneOm pr where pr.om.omId=:ids")
    public List<LigneOm> getLigneOmbyOM(@Param(value = "ids") Long ids);

}

