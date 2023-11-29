package com.EIE.demo.dao;

import com.EIE.demo.model.Detachement_Vehicules;
import org.springframework.data.jpa.repository.JpaRepository;

public interface Detachement_VehiculesRepository extends JpaRepository<Detachement_Vehicules, Long> {
    // You can add custom query methods here if needed.
}
