package com.EIE.demo.dao;

import com.EIE.demo.model.Mar;
import org.springframework.data.jpa.repository.JpaRepository;

public interface MarRepository extends JpaRepository<Mar, Long> {
    // You can add custom query methods here if needed.
}
