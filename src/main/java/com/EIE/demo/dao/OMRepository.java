package com.EIE.demo.dao;

import com.EIE.demo.model.OM;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface OMRepository extends JpaRepository<OM, Long> {
    // You can add custom query methods here if needed.

    @Query(value ="select case when ((max( OM_ID)+1) is null) then 1 else (max( OM_ID)+1) end from OM", nativeQuery = true)
    Long getmaxid();


    @Query(value ="select * from OM where ", nativeQuery = true)
    List<OM> getOMvalide();


}
