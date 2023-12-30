package com.EIE.demo.dao;

import com.EIE.demo.model.Compte_Rendu;
import org.springframework.data.jpa.repository.JpaRepository;

public interface Compte_RenduRepository extends JpaRepository<Compte_Rendu, Long> {
    // You can add custom query methods here if needed.
}
