package com.EIE.demo.dao;

import com.EIE.demo.model.VersionAeb;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface VersionAebRepository extends JpaRepository<VersionAeb, Long> {

    @Query("select c from VersionAeb c  order by c.typeId DESC  ")
    public Page<VersionAeb> getAllCategorieAEBPage(Pageable page);
}
