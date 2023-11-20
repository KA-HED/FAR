package com.EIE.demo.dao;

import com.EIE.demo.model.TypeAEB;
import org.springframework.data.jpa.repository.JpaRepository;

public interface TypeAEBRepository extends JpaRepository<TypeAEB, Long> {
    // You can add custom query methods here if needed.
}
