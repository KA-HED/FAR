package com.EIE.demo.dao;

import com.EIE.demo.model.AbcDetenteur;
import org.springframework.data.jpa.repository.JpaRepository;

public interface AbcDetenteurRepository extends JpaRepository<AbcDetenteur, Long> {
    // You can add custom query methods here if needed.
}
