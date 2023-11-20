package com.EIE.demo.dao;

import com.EIE.demo.model.CatSCatAEB;
import org.springframework.data.jpa.repository.JpaRepository;

public interface CatSCatAEBRepository extends JpaRepository<CatSCatAEB, Long> {
    // You can add custom query methods here if needed.
}
