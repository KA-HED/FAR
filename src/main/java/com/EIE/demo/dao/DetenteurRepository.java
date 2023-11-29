package com.EIE.demo.dao;

import com.EIE.demo.model.Detenteur;
import org.springframework.data.jpa.repository.JpaRepository;

public interface DetenteurRepository extends JpaRepository<Detenteur, Long> {
    // You can add custom query methods here if needed.
}
