package com.EIE.demo.dao;

import com.EIE.demo.model.UnitesCriblees;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface UnitesCribleesRepository extends JpaRepository<UnitesCriblees, Long> {
    // You can add custom query methods here if needed.

    @Query(value ="select case when ((max( UNT_ID)+1) is null) then 1 else (max( UNT_ID)+1) end from UNITES_CRIBLEES", nativeQuery = true)
    Long getmaxid();
}
