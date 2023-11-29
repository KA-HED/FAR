package com.EIE.demo.dao;

import com.EIE.demo.model.Pos;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface PosRepository extends JpaRepository<Pos, Long> {
    // You can add custom query methods here if needed.

    @Query(value ="select case when ((max( POS_ID)+1) is null) then 1 else (max( POS_ID)+1) end from G_POS_ADMIN", nativeQuery = true)
    Long getmaxid();
}
