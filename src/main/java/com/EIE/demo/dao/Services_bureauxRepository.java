package com.EIE.demo.dao;

import com.EIE.demo.model.Services_bureaux;
import org.springframework.data.jpa.repository.JpaRepository;

public interface Services_bureauxRepository extends JpaRepository<Services_bureaux, Long> {
    // You can add custom query methods here if needed.
}
