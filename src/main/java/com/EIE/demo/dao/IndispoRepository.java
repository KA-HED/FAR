package com.EIE.demo.dao;

import com.EIE.demo.model.Indispo;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface IndispoRepository extends JpaRepository<Indispo, Long> {
    // You can add custom query methods here if needed.
    @Query(value ="select max( INDISPO_ID)+1 from Indispo", nativeQuery = true)
    Long getmaxid();
}
