package com.EIE.demo.dao;

import com.EIE.demo.model.CategorieAEB;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface CategorieAEBRepository extends JpaRepository<CategorieAEB, Long> {

    @Query("select c from CategorieAEB c  order by c.catId DESC  ")
    public Page<CategorieAEB> getAllCategorieAEBPage (Pageable page);
}
