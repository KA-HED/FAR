package com.EIE.demo.dao;

import com.EIE.demo.model.MarqueAEB;
import org.springframework.data.jpa.repository.JpaRepository;

public interface MarqueAEBRepository extends JpaRepository<MarqueAEB, Long> {
    // You can add custom query methods here if needed.
}
