package com.EIE.demo.dao;

import com.EIE.demo.model.Region;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface RegionRepository extends JpaRepository<Region, Integer> {

	@Query("from Region  where deleteDateTime is null order by regionId DESC  ")
	public List<Region> getAllRegion();

	@Query(value="exec(:filter)",nativeQuery = true)
	public Object[] getAllObject(@Param("filter") String filter);

	@Query("from Region fp  where (fp.nom_fr=:a1 or fp.nom_ar=:a1)  and deleteDateTime is null order by regionId DESC  ")
	public Region siExiste(@Param("a1") String a1);

//	ajout standarr des objets
	@Query(value="exec(:filter)",nativeQuery = true)
	public int add_object(@Param("filter") String filter);

	@Query("select n from Region n WHERE n.deleteDateTime is null ")
	public Page<Region> getstatutprojetByaction(Pageable p);

	@Query("From Region where deleteDateTime is null order by regionId desc")
    Region[] getArrAllRegion();

	@Query("select n from Region n where n.deleteDateTime is null order by  n.regionId desc")
	Region[] getAllRegionTab();

	@Query("select n from Region n where n.deleteDateTime is null order by  n.regionId desc")
	Region[] getAllRegionsTab();

	@Query("select r.nom_fr from Region r where r.deleteDateTime is null")
	String[] getRegions();

	@Query("select p.nom_fr from Prefecture p where p.deleteDateTime is null")
	String[] getPrefectures();
}
