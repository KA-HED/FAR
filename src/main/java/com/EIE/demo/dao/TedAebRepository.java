package com.EIE.demo.dao;

import com.EIE.demo.model.TedAeb;
import org.springframework.data.jpa.repository.JpaRepository;

public interface TedAebRepository extends JpaRepository<TedAeb, Long> {
    // You can add custom query methods here if needed.

}
