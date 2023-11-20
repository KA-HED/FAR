package com.EIE.demo.dao;

import com.EIE.demo.model.MA;
import org.springframework.data.jpa.repository.JpaRepository;

public interface MARepository extends JpaRepository<MA, Long> {
    // You can add custom query methods here if needed.
}
