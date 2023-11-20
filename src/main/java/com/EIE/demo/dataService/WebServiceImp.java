package com.EIE.demo.dataService;

import com.EIE.demo.dao.ActeurRepository;
import com.EIE.demo.model.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.core.ParameterizedTypeReference;
import org.springframework.core.io.FileSystemResource;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.net.URI;

//
@Service
public class WebServiceImp implements WebService {

	@Autowired
	private ActeurRepository acteurRepository;
	@Value("${url}")
	private String urlRest;



	@Override
	public Acteur getCompteConnected() {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		String name=auth.getName();
		Acteur  result = acteurRepository.siExiste(name);
		return result;
	}

	public static File convert(MultipartFile file)
	  {    
	    File convFile = new File(file.getOriginalFilename());
	    try {
	        convFile.createNewFile();
	          FileOutputStream fos = new FileOutputStream(convFile); 
	            fos.write(file.getBytes());
	            fos.close(); 
	    } catch (IOException e) {
	        // TODO Auto-generated catch block
	        e.printStackTrace();
	    } 

	    return convFile;
	 }


	@Override
	public String updateObject(Object nt, String table,String id) {
		final String uris = urlRest + "/update_object/"+table+"/"+id;
		RestTemplate restTemplate = new RestTemplate();

		URI test = restTemplate.postForLocation(uris, nt, Object.class);
		String tt = test.getPath().split("/")[1];
		 tt = test.getPath().split("/")[2];
		return tt;


	}





}
