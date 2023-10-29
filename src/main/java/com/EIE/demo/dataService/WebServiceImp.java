package com.EIE.demo.dataService;

import com.EIE.demo.model.*;
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
	
	@Value("${url}")
	private String urlRest;



	@Override
	public Compte getCompteConnected() {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		String name=auth.getName();
		final String uri = urlRest+"/SelectOneUser/"+name;
		RestTemplate restTemplate = new RestTemplate();
		Compte  result = restTemplate.getForObject(uri, Compte.class);
		return result;
	}
	

	@Override
	public void addDocInfo( MultipartFile[] fileToUpload,int id,int check) {
		final String uris = urlRest + "/addDemandeInformationDocRest/"+id+"/"+check;
		 MultiValueMap<String, Object> bodyMap = new LinkedMultiValueMap<>();
	      bodyMap.add("file", new FileSystemResource(convert(fileToUpload[0])));
	      HttpHeaders headers = new HttpHeaders();
	      headers.setContentType(MediaType.MULTIPART_FORM_DATA);
	      HttpEntity<MultiValueMap<String, Object>> requestEntity = new HttpEntity<>(bodyMap, headers);
	      RestTemplate restTemplate = new RestTemplate();
	      ResponseEntity<String> response = restTemplate.exchange(uris,
	              HttpMethod.POST, requestEntity, String.class);
		
	}

	@Override
	public void addDocInfoRegion( MultipartFile[] fileToUpload,int id,int idRegion) {
		final String uris = urlRest + "/addRegionDocRest/"+id+"/"+idRegion;
		MultiValueMap<String, Object> bodyMap = new LinkedMultiValueMap<>();
		bodyMap.add("file", new FileSystemResource(convert(fileToUpload[0])));
		HttpHeaders headers = new HttpHeaders();
		headers.setContentType(MediaType.MULTIPART_FORM_DATA);
		HttpEntity<MultiValueMap<String, Object>> requestEntity = new HttpEntity<>(bodyMap, headers);
		RestTemplate restTemplate = new RestTemplate();
		ResponseEntity<String> response = restTemplate.exchange(uris,
				HttpMethod.POST, requestEntity, String.class);

	}
	
	@Override
	public void addDocAut( MultipartFile[] fileToUpload,int id,int check) {
		final String uris = urlRest + "/addDocAutRest/"+id+"/"+check;
		 MultiValueMap<String, Object> bodyMap = new LinkedMultiValueMap<>();
	      bodyMap.add("file", new FileSystemResource(convert(fileToUpload[0])));
	      HttpHeaders headers = new HttpHeaders();
	      headers.setContentType(MediaType.MULTIPART_FORM_DATA);
	      HttpEntity<MultiValueMap<String, Object>> requestEntity = new HttpEntity<>(bodyMap, headers);
	      RestTemplate restTemplate = new RestTemplate();
	      ResponseEntity<String> response = restTemplate.exchange(uris,
	              HttpMethod.POST, requestEntity, String.class);
		
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
	public String autologin2(String j_name, String j_pass) {
		final String uris = urlRest + "/login2/"+j_name+"/"+j_pass;
		RestTemplate restTemplate = new RestTemplate();
		String response = restTemplate.getForObject(uris, String.class);
		return response;
	}

	@Override
	public Compte chackmail(String email) {
		final String uris = urlRest + "/SelectOneUser/"+email;
		RestTemplate restTemplate = new RestTemplate();
		Compte response = restTemplate.getForObject(uris, Compte.class);
		return response;
	}


	@Override
	public Object[] tronsaction(String opiration, String table,String filter) {

		final String uri = urlRest + "/TransactionInTable/"+opiration+"/"+table+"/"+filter;
		RestTemplate restTemplate = new RestTemplate();
		Object[] resultat = restTemplate.getForObject(uri, Object[].class);

		return resultat;
	}

	@Override
	public String addObject(Object nt, String table) {
		final String uris = urlRest + "/add_object/"+table;
		RestTemplate restTemplate = new RestTemplate();

		URI test = restTemplate.postForLocation(uris, nt, Object.class);
		String tt = test.getPath().split("/")[1];
		 tt = test.getPath().split("/")[2];
		return tt;


	}

	@Override
	public String UpdatePassword(int id,String passe,String password){
		final String uris = urlRest + "/updatepasswordRest/"+id+"/"+passe;
		MultiValueMap<String, Object> bodyMap = new LinkedMultiValueMap<>();
		bodyMap.add("password", password );
		HttpHeaders headers = new HttpHeaders();
		headers.setContentType(MediaType.MULTIPART_FORM_DATA);
		HttpEntity<MultiValueMap<String, Object>> requestEntity = new HttpEntity<>(bodyMap, headers);
		RestTemplate restTemplate = new RestTemplate();
		try {
			ResponseEntity<String> response = restTemplate.exchange(uris,
					HttpMethod.POST, requestEntity, String.class);
			return "OK";

		} catch (Exception e) {
			return "le lien est expiré";
		}

	}


	@Override
	public String UpdatePassword2(int id,String password){
		final String uris = urlRest + "/updatepasswordRest2/"+id;
		MultiValueMap<String, Object> bodyMap = new LinkedMultiValueMap<>();
		bodyMap.add("password", password );
		HttpHeaders headers = new HttpHeaders();
		headers.setContentType(MediaType.MULTIPART_FORM_DATA);
		HttpEntity<MultiValueMap<String, Object>> requestEntity = new HttpEntity<>(bodyMap, headers);
		RestTemplate restTemplate = new RestTemplate();
		try {
			ResponseEntity<String> response = restTemplate.exchange(uris,
					HttpMethod.POST, requestEntity, String.class);
			return "OK";

		} catch (Exception e) {
			return "le lien est expiré";
		}

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
