package com.EIE.demo.web;

import com.EIE.demo.dao.*;
import com.EIE.demo.dataService.FileStorageService;
import com.EIE.demo.dataService.SecurityService;
import com.EIE.demo.dataService.WebService;
import com.EIE.demo.model.*;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.util.UriComponentsBuilder;

import javax.mail.MessagingException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import java.io.UnsupportedEncodingException;
import java.net.UnknownHostException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.*;

@RestController
public class RestFulControler {

	@Autowired
	public JavaMailSender emailSender;
	@Value("${urls}")
	private String urls;
	@Value("${fromusermail}")
	private String fromusermail;
	@Value("${fromuser}")
	private String fromuser;
	@Value("${supportmail}")
	private String supportmail;
	@Value("${support}")
	private String support;
	@Value("${policeEnvironnement}")
	private String policeEnvironnement;

	@Autowired
    CompteRepository cr;
	@Autowired
    SecurityService secure;

	@Autowired
    WebService web;

	@Autowired
    FileStorageService fileStorageService;
	@Autowired
	private PasswordEncoder passwordEncoder;
	@Autowired
	private CompteRepository compteRepository;




	ObjectMapper objectMapper = new ObjectMapper();

	@RequestMapping(value = "/SelectOneUser/{email}", method = RequestMethod.GET)
	public ResponseEntity<Compte> SelectOneUser(@PathVariable String email) {
		Compte etapeDossier = cr.siExiste(email);
		if (etapeDossier == null) {
			return new ResponseEntity<Compte>(HttpStatus.NO_CONTENT);
		}
		return new ResponseEntity<Compte>(etapeDossier, HttpStatus.OK);
	}





	@RequestMapping(value = "/SelectOneEmail/{email}", method = RequestMethod.GET)
	public ResponseEntity<Compte> SelectOneEmail(@PathVariable String email) {
		Compte etapeDossier = cr.siExisteemailrecup(email);
		if (etapeDossier == null) {
			return new ResponseEntity<Compte>(HttpStatus.NO_CONTENT);
		}
		return new ResponseEntity<Compte>(etapeDossier, HttpStatus.OK);
	}
//mon profil ayoub*
	@RequestMapping(value = "/chackmailmonprofil/{email}/{id}", method = RequestMethod.GET)
	public ResponseEntity<Compte> chackmailmonprofil(@PathVariable String email, @PathVariable int id) {
		Compte etapeDossier = cr.siExisteemailrecupmonprofil(email,id);
		if (etapeDossier == null) {
			return new ResponseEntity<Compte>(HttpStatus.NO_CONTENT);
		}
		return new ResponseEntity<Compte>(etapeDossier, HttpStatus.OK);
	}
	//mon profil ayoub****


	@RequestMapping(value = "/SelectOneUser2/{email}", method = RequestMethod.GET)
	public ResponseEntity<Compte> SelectOneUser2(@PathVariable String email) {
		Compte etapeDossier = cr.siExisteemailrecup(email);
		if (etapeDossier == null) {
			return new ResponseEntity<Compte>(HttpStatus.NO_CONTENT);
		}
		return new ResponseEntity<Compte>(etapeDossier, HttpStatus.OK);
	}
	@RequestMapping(value = "/check_autorisation/{email}/{statut}/{id}", method = RequestMethod.GET)
	public ResponseEntity<Compte> check_autorisation(@PathVariable String email, @PathVariable String statut, @PathVariable int id) {
		Compte etapeDossier = cr.sicheckauto(email,statut,id);
		if (etapeDossier == null) {
			return new ResponseEntity<Compte>(HttpStatus.NO_CONTENT);
		}
		return new ResponseEntity<Compte>(etapeDossier, HttpStatus.OK);
	}

	@RequestMapping(value = "/getCompteByIdRest/{id}", method = RequestMethod.GET)
	public ResponseEntity<Compte> getCompteById(@PathVariable int id) {
		Compte etapeDossier = cr.getOne(id);
		if (etapeDossier == null) {
			return new ResponseEntity<Compte>(HttpStatus.NO_CONTENT);
		}
		return new ResponseEntity<Compte>(etapeDossier, HttpStatus.OK);
	}
	//**********passe******
	@RequestMapping(value = "/getCompteBypasseRest/{passe}", method = RequestMethod.GET)
	public ResponseEntity<Compte> getCompteBypasseRest(@PathVariable String  passe) {
		Compte etapeDossier = cr.getpasse(passe);
		if (etapeDossier == null) {
			return new ResponseEntity<Compte>(HttpStatus.NO_CONTENT);
		}
		return new ResponseEntity<Compte>(etapeDossier, HttpStatus.OK);
	}



	//	login espace client
	@RequestMapping(value = "/login2/{j_name}/{j_pass}", method = RequestMethod.GET)
	public ResponseEntity<String> verifiedCompteRest(Model model, @PathVariable String j_name,
													 @PathVariable String j_pass) throws JsonProcessingException {
		String s = "non";
		if (j_name != null) {
			s = secure.autologin(j_name, j_pass);
			if (s == "oui") {

				s = "oui";
			} else {
				s = "non";
			}

		} else {
			s = "non";
		}
		return new ResponseEntity<String>(s, HttpStatus.OK);
	}



	@RequestMapping(value = "/sendEmailRest/{id}", method = RequestMethod.GET)
	public ResponseEntity<String> sendEmailRest(@PathVariable int id, UriComponentsBuilder ucBuilder) throws JsonProcessingException, MessagingException, UnsupportedEncodingException {

		Compte ct = compteRepository.getOne(id);
		MimeMessage mimeMessage = emailSender.createMimeMessage();

		boolean multipart = true;
		MimeMessageHelper messageEmail = new MimeMessageHelper(mimeMessage, multipart, "utf-8");
		boolean to_send = false;
		messageEmail.setTo(InternetAddress.parse(ct.getEmailRecup()));
		to_send = true;
		messageEmail.setSubject("Email de réinitialisation de mot de passe");
		messageEmail.setText("Bonjour M/Mme "+ct.getNom()+"<p>Il semble que vous avez oublié votre mot de passe pour e-services.environnement.gov.ma . </p>"+"" +
				"<p>Pour réinitialiser votre mot de passe <a href='"+urls+"/getforget/"+"AH6543YLOK"+ct.getCompteId()+"GDTGD1213F"+"/"+ct.getPassword().replace("/","-")+"'>cliquer ici </a> </p>"+"" +
				"<p>Si vous n'avez pas oublié votre mot de passe, veuillez ignorer cet e-mail.</p>", true);

		messageEmail.setFrom(fromusermail,fromuser);

		if (to_send)
			try {
				emailSender.send(mimeMessage);
			} catch (Exception ex) {
				System.out.println(ex.getMessage());
			}

		HttpHeaders headers = new HttpHeaders();
		headers.setLocation(ucBuilder.path("/addSocieteRest/{id}").buildAndExpand(ct.getCompteId()).toUri());
		return new ResponseEntity<String>(headers, HttpStatus.CREATED);

	}




	@RequestMapping(value = "/sendErrorMail")
	public  ResponseEntity<Void> SendErrorMail(int compte,String errorMessage,String errorUrl,int errorStatutCode) throws MessagingException, UnsupportedEncodingException {

		Compte ct = compteRepository.getOne(compte);

		String[] parts = supportmail.split(",");
		String mail1 = parts[0];
		String mail2 = parts[1];

		if(errorStatutCode==404){
			errorMessage="Page Not Found";
		}
		MimeMessage mimeMessage = emailSender.createMimeMessage();
		boolean multipart = true;
		MimeMessageHelper messageEmail = new MimeMessageHelper(mimeMessage, multipart, "utf-8");

		boolean to_send = false;
		messageEmail.setTo(new String[]{mail1, mail2});
		to_send = true;

		messageEmail.setSubject("Error");
		messageEmail.setText(" <table width = \"100%\" cellpadding=\"10\" border = \"1\">\n" +
				"         <tr valign = \"top\">\n" +
				"            <td width = \"11%\"><b>Error Name:</b></td>\n" +
				"            <td>"+errorMessage+"</td>\n" +
				"         </tr>\n" +
				"            \n" +
				"         <tr valign = \"top\">\n" +
				"            <td><b>Page Url:</b></td>\n" +
				"            <td>"+errorUrl+"</td>\n" +
				"         </tr>\n" +
				"            \n" +
				"         <tr valign = \"top\">\n" +
				"            <td><b>Status code:</b></td>\n" +
				"            <td>"+errorStatutCode+"</td>\n" +
				"         </tr>\n" +
				"         <tr valign = \"top\">\n" +
				"            <td><b>L'erreur a été trouvé par:</b></td>\n" +
				"            <td>"+ct.getNom()+" / "+ct.getEmailRecup()+" \t @Petitionnaire</td>\n" +
				"         </tr>\n" +
				"            \n" +
				"      </table>", true);

		messageEmail.setFrom(fromusermail, support);

		if (to_send)
			try {
				emailSender.send(mimeMessage);
			} catch (Exception ex) {
				System.out.println(ex.getMessage());
			}
		HttpHeaders headers = new HttpHeaders();
		return new ResponseEntity<Void>(headers, HttpStatus.CREATED);
	}


}
