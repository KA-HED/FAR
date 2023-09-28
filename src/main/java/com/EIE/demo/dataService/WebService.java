package com.EIE.demo.dataService;

import com.EIE.demo.model.*;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.http.ResponseEntity;
import org.springframework.web.multipart.MultipartFile;

public interface WebService {

	public Compte getCompteConnected();
	public void addDocInfo( MultipartFile[] fileToUpload , int id,int check);
	public void addDocInfoRegion(MultipartFile[] fileToUpload, int id, int idRegion);
	public void addDocAut( MultipartFile[] fileToUpload , int id,int check);

	public Compte chackmail(String email);
	String UpdatePassword(int id,String passe,String password);
	String UpdatePassword2(int id,String password);

	public String autologin2(String j_name, String j_pass);
	public Object[] tronsaction(String opiration, String table,String filter);
	public String addObject(Object nt, String table);
	public String updateObject(Object nt, String table,String id);



	ResponseEntity<RestResponsePage<Reponse>> getListReponseByIdQuestion(int id, PageRequest pageRequest);

	public void saveReponse(Reponse r,int id);
	public void deleteReponse(int id_ques, int idrep);
	public Reponse getReponseById(int id);
}
