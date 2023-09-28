package com.EIE.demo.dao;

import com.EIE.demo.model.IP;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;


public interface IpRepository extends JpaRepository<IP, Integer> {
	
	@Query(value="from IP where deleteDateTime is null")
	public IP[] getAllIPs();

	@Query(value="from IP where deleteDateTime is null and AdresseIp=:ip")
	public IP getByAdresseIp(String ip);
	
}


