package com.EIE.demo.dao;

import com.EIE.demo.model.SCatMque;
import org.springframework.data.jpa.repository.JpaRepository;

public interface SCatMqueRepository extends JpaRepository<SCatMque, Long> {
    // You can add custom query methods here if needed.
}
