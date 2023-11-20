package com.EIE.demo.dao;

import com.EIE.demo.model.OM;
import org.springframework.data.jpa.repository.JpaRepository;

public interface OMRepository extends JpaRepository<OM, Long> {
    // You can add custom query methods here if needed.
}
