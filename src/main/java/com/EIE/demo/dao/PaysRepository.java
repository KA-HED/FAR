package com.EIE.demo.dao;

import com.EIE.demo.model.Pays;
import org.springframework.data.jpa.repository.JpaRepository;

public interface PaysRepository extends JpaRepository<Pays, Long> {
    // You can add custom query methods here if needed.
}
