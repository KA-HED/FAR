package com.EIE.demo.dao;

import com.EIE.demo.model.Sect;
import org.springframework.data.jpa.repository.JpaRepository;

public interface SectRepository extends JpaRepository<Sect, Long> {
    // You can add custom query methods here if needed.
}
