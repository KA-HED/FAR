package com.EIE.demo.dao;

import com.EIE.demo.model.SCategorieAEB;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface SCategorieAEBRepository extends JpaRepository<SCategorieAEB, Long> {

    @Query("select c from SCategorieAEB c  order by c.sCatId DESC  ")
    public Page<SCategorieAEB> getAllCategorieAEBPage(Pageable page);


//    @Query("select a from SCategorieAEB a where  a.domainef.id_domaine=:id")
//    List<SCategorieAEB> getsCategorieAEBbyCat(int id);

    @Query(value ="select * from s_categorie_aeb where s_cat_id in(select s_cat_id from cat_s_cat_aeb where cat_id=:id)", nativeQuery = true)
    List<SCategorieAEB> getsCategorieAEBbyCat(Long id);

//    faroqtromp

}
