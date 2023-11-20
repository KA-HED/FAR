package com.EIE.demo.dataService;

import com.EIE.demo.model.*;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.http.ResponseEntity;
import org.springframework.web.multipart.MultipartFile;

public interface WebService {

	public Acteur getCompteConnected();

	public String updateObject(Object nt, String table,String id);




}
