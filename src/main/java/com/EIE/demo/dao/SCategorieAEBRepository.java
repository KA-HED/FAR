package com.EIE.demo.dao;

import com.EIE.demo.model.SCategorieAEB;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface SCategorieAEBRepository extends JpaRepository<SCategorieAEB, Long> {

    @Query("select c from SCategorieAEB c  order by c.sCatId DESC  ")
    public Page<SCategorieAEB> getAllCategorieAEBPage(Pageable page);
}
