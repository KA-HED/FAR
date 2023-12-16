package com.EIE.demo.dao;

import com.EIE.demo.model.TypeAEB;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface TypeAEBRepository extends JpaRepository<TypeAEB, Long> {
    // You can add custom query methods here if needed.

    @Query(value ="select case when ((max( type_id)+1) is null) then 1 else (max( type_id)+1) end from type_aeb", nativeQuery = true)
    Long getmaxid();

    @Query(value ="select * from type_aeb where marque_id =:id", nativeQuery = true)
    List<TypeAEB> getsTypeAEBbymarque(Long id);

    @Query(value ="select * from type_aeb where marque_id =:id  and rownum = 1", nativeQuery = true)
    TypeAEB getsoneTypeAEBbymarque(Long id);
}
