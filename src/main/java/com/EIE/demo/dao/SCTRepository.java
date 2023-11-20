package com.EIE.demo.dao;

import com.EIE.demo.model.SCT;
import org.springframework.data.jpa.repository.JpaRepository;

public interface SCTRepository extends JpaRepository<SCT, Long> {
    // You can add custom query methods here if needed.
}
