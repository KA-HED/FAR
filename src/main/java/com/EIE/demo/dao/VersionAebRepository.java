package com.EIE.demo.dao;

import com.EIE.demo.model.VersionAeb;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface VersionAebRepository extends JpaRepository<VersionAeb, Long> {

    @Query("select c from VersionAeb c  order by c.typeId DESC  ")
    public Page<VersionAeb> getAllCategorieAEBPage(Pageable page);

    @Query(value ="select case when ((max( version_id)+1) is null) then 1 else (max( version_id)+1) end from version_aeb", nativeQuery = true)
    Long getmaxid();

    @Query(value ="select * from version_aeb where type_id =:id", nativeQuery = true)
    List<VersionAeb> getsVersionAebByTypeAEB(Long id);
}
