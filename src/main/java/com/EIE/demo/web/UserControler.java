package com.EIE.demo.web;

import com.EIE.demo.dao.*;
import com.EIE.demo.dataService.FileStorageService;
import com.EIE.demo.dataService.SecurityService;
import com.EIE.demo.dataService.WebService;
import com.EIE.demo.model.*;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;

import org.apache.el.parser.ParseException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.core.io.Resource;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import javax.mail.MessagingException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.net.UnknownHostException;
import java.security.Principal;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.util.*;
import java.util.concurrent.TimeUnit;
import java.util.stream.Collectors;

@Controller

public class UserControler {

	@Autowired
	private PrRoleRepository profilRoleRepository;
	@Autowired
	private CompteRepository compteRepository;
	@Autowired
	private IndispoRepository indispoRepository;

	@Autowired
	private ActeurRepository acteurRepository;


	@Autowired
	private RoleRepository roleRepository;

	@Autowired
	private ProfilRepository profilRepository;
	@Autowired
	private WebService web;

	@Autowired
	private SecurityService secure;
	@Autowired
	FileStorageService fileStorageService;



	ObjectMapper objectMapper = new ObjectMapper();
	@Autowired
	private PasswordEncoder passwordEncoder;


	@Value("${url}")
	private String urlRest;

	@Value("${urls}")
	private String url;


	@RequestMapping(value = { "/*" }, method = RequestMethod.GET)
	public String index(HttpServletRequest request, HttpSession session, Principal principal) {

		return (principal != null) ? "accueil" : "login2";
	}

	@RequestMapping(value = { "/" }, method = RequestMethod.GET)
	public String indexS(HttpServletRequest request, HttpSession session, Principal principal) {

		return "login2";
	}

	@RequestMapping(value = "/logout", method = RequestMethod.POST)
	public String logout(HttpServletRequest request, HttpServletResponse response) {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (auth != null) {
			new SecurityContextLogoutHandler().logout(request, response, auth);
		}

		return "login2";
	}

	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public String getPages(@RequestParam(value = "error", required = false) String error, Principal principal) {

		return "login2";
	}

	@RequestMapping(value = "/api/getParamPage", method = RequestMethod.GET)
	public ModelAndView getParamPage() {
		Map<String, Object> model = new HashMap<String, Object>();
		return new ModelAndView("paramPage", model);
	}

	@RequestMapping(value = "/getProfilDetails", method = RequestMethod.GET)
	public ModelAndView getProfilDetails(@RequestParam int val) {
		Map<String, Object> model = new HashMap<String, Object>();

		List<ProfilRole> rtf = profilRoleRepository.getAllProfilRoles(val);

		//model.put("roles", rt);
		model.put("profilId", val);

		return new ModelAndView("compte/droitTr", model);
	}

	@RequestMapping(value = "/api/getCompte", method = RequestMethod.GET)
	public ModelAndView getCompte() {
		Map<String, Object> model = new HashMap<String, Object>();

		List<Profil> pr = profilRepository.getAllProfil();

		model.put("profil", pr);
		List<Acteur> rt = acteurRepository.getAllCompte();

		model.put("comptes", rt);

		return new ModelAndView("compte/compte", model);
	}



	@RequestMapping(value = "/api/getOneCompte", method = RequestMethod.GET)
	public ModelAndView getOneCompte() {
		Map<String, Object> model = new HashMap<String, Object>();

		List<Profil> pr = profilRepository.getAllProfil();

		model.put("profil", pr);
		List<Acteur> rt = acteurRepository.getAllCompte();

		model.put("comptes", rt);

		return new ModelAndView("compte/compte", model);
	}

	@RequestMapping(value = "/api/getOneCompteId", method = RequestMethod.GET)
	public ModelAndView getOneCompteId(@RequestParam Long id) {
		Map<String, Object> model = new HashMap<String, Object>();

		List<Profil> pr = profilRepository.getAllProfil();

		model.put("profil", pr);
		Acteur cpt = acteurRepository.getOne(id);
		model.put("cpt", cpt);
		List<Acteur> rt = acteurRepository.getAllCompte();

		model.put("comptes", rt);

		return new ModelAndView("compte/compte", model);
	}

	@RequestMapping(value = "/addCompte", method = RequestMethod.POST)
	public ModelAndView addCompte(@RequestBody Acteur cmt) {
		Map<String, Object> model = new HashMap<String, Object>();
		Long id = cmt.getActeurId();
		cmt.setMotDePasse(passwordEncoder.encode(cmt.getMotDePasse()));
		acteurRepository.save(cmt);

		List<Profil> pr = profilRepository.getAllProfil();

		model.put("profil", pr);
		List<Acteur> rt = acteurRepository.getAllCompte();

		model.put("comptes", rt);

		return new ModelAndView("compte/compte", model);
	}

	@RequestMapping(value = "/deleteCompte", method = RequestMethod.POST)
	public @ResponseBody String addCompte(@RequestParam Long id) {

		Acteur cmt = acteurRepository.getOne(id);
		cmt.setActive("0");
		acteurRepository.save(cmt);

		return "ok";
	}

	@RequestMapping(value = "/api/getDroit", method = RequestMethod.GET)
	public ModelAndView getDroit() {
		Map<String, Object> model = new HashMap<String, Object>();

		List<Role> roles = roleRepository.getAllRole();
		model.put("roles", roles);

		return new ModelAndView("compte/droit", model);
	}

	@RequestMapping(value = "/api/getListe", method = RequestMethod.GET)
	public ModelAndView getListe() {
		Map<String, Object> model = new HashMap<String, Object>();

		List<Profil> roles = profilRepository.getAllProfil();
		model.put("roles", roles);

		return new ModelAndView("compte/droitexiste", model);
	}

	@RequestMapping(value = "/addProfil", method = RequestMethod.POST)
	public ModelAndView addProfil(@RequestBody Profil profil) {

		Map<String, Object> model = new HashMap<String, Object>();

		profilRepository.save(profil);
		List<Role> roles = roleRepository.getAllRole();

		int pr = profil.getProfilId();
		List<ProfilRole> prfs = new ArrayList<ProfilRole>();
		for (Role r : roles) {
			ProfilRole prf = new ProfilRole();
			prf.setValider("non");
			prf.setAnnuler("non");
			prf.setModifier("non");
			prf.setProfil(profil);
			prf.setRole(r);
			profilRoleRepository.save(prf);
			ProfilRole prt = profilRoleRepository.getAllProfilRole(r.getRoleId(), pr);
			prfs.add(prt);
		}

		model.put("profilId", pr);
		model.put("roles", prfs);

		return new ModelAndView("compte/droitTr", model);
	}

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public ModelAndView login(@RequestParam(value = "error", required = false) String error,
			@RequestParam(value = "logout", required = false) String logout) {

		ModelAndView model = new ModelAndView();
		if (error != null) {
			model.addObject("error", "Invalid username/password");
		}

		if (logout != null) {
			model.addObject("message", "Logged out");
		}
		model.setViewName("login");
		return model;
	}

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String loginMe(Model model, @RequestParam(required = false) String j_name,
			@RequestParam(required = false) String j_pass) {
		if (j_name != null) {
			String s = secure.autologin(j_name, j_pass);
			Date dated=new Date();
			if (s.equals("oui")) { return "redirect:/api/getMenu?lang=fr"; } else { return "redirect:/index"; }
		} else { return "redirect:/index"; }
	}



	@RequestMapping(value = "/api/getMenu", method = RequestMethod.GET)
	public ModelAndView getMenu(HttpServletRequest request, HttpServletResponse response, HttpSession session,
			Principal principal, String dateF)  {
		String v = principal.getName();
		Acteur u = acteurRepository.siExiste(v);

		Map<String, Object> model = new HashMap<String, Object>();

		model.put("user", u);
		return new ModelAndView("acceuil/acceuil", model);

	}


	@RequestMapping(value = "/api/getMenuAEB", method = RequestMethod.GET)
	public ModelAndView getMenuAEB(HttpServletRequest request, HttpServletResponse response, HttpSession session,
			Principal principal, String dateF)  {
		String v = principal.getName();
		Acteur u = acteurRepository.siExiste(v);

		Map<String, Object> model = new HashMap<String, Object>();

		model.put("user", u);
		return new ModelAndView("acceuil/acceuil_AEB", model);

	}



	@RequestMapping(value = "/checkEmail", method = RequestMethod.GET)
	public @ResponseBody String checkEmail(@RequestParam String val) {
		String check = "non";
		Acteur fm = acteurRepository.siExiste(val);
		if (fm == null) {
			check = "non";
		} else {
			check = "oui";
		}

		return check;

	}

	@RequestMapping(value = "/checkProfil", method = RequestMethod.GET)
	public @ResponseBody String checkProfil(@RequestParam String val) {
		String check = "non";
		Profil fm = profilRepository.siExisteProfil(val);
		if (fm == null) {
			check = "non";
		} else {
			check = "oui";
		}

		return check;

	}


//pour enregistrer une nouvelle famille

	@RequestMapping(value = "/api/dowload_uploaded/{filename:.+}", method = RequestMethod.GET)
	public @ResponseBody ResponseEntity<Resource> serveFile(@PathVariable String filename) {
		Resource file = fileStorageService.loadFileAsResource(filename);
		return ResponseEntity.ok()
				.header(HttpHeaders.CONTENT_DISPOSITION, "attachment; filename=\"" + file.getFilename() + "\"")
				.body(file);
	}
	//a confirmer avec amal !!!!!!!!!!!!!!!!!!!!!!!!!!!
	@RequestMapping(value = "/dowload_uploaded/{filename:.+}", method = RequestMethod.GET)
	public @ResponseBody ResponseEntity<Resource> serveFiles(@PathVariable String filename) {
		Resource file = fileStorageService.loadFileAsResource(filename);
		return ResponseEntity.ok()
				.header(HttpHeaders.CONTENT_DISPOSITION, "attachment; filename=\"" + file.getFilename() + "\"")
				.body(file);
	}

	/*@RequestMapping(value = "/DownloadFile/{id}/{type}/{etat}", method = RequestMethod.GET)
	public @ResponseBody ResponseEntity<Resource> DownloadFile(@PathVariable int id,@PathVariable String type,@PathVariable int etat) {
		Notification nt = notifRepository.getnotificationByIdType(id,type);
		String filename="";
		if(etat==1) {
			filename = nt.getUrl_doc_signer();
			filename = filename.replace("/assets/myFile/", "");
		}
		else if(etat==2) {
			filename = nt.getUrl_lettre();
			filename = filename.replace("/assets/myFile/", "");
		}
		else{
			filename = nt.getUrl_lettre_conforme();
			filename = filename.replace("/assets/myFile/", "");
		}
		Resource file = fileStorageService.loadFileAsResource(filename);
		return ResponseEntity.ok()
				.header(HttpHeaders.CONTENT_DISPOSITION, "attachment; filename=\"" + file.getFilename() + "\"")
				.body(file);
	}*/



	@RequestMapping(value = "/addProfilInfo", method = RequestMethod.POST)

	public @ResponseBody String addRoleToDirection(@RequestParam int profilId, @RequestParam String action,
			@RequestParam int roleId) {
		ProfilRole prt = profilRoleRepository.getAllProfilRole(roleId, profilId);
		if (prt != null) {
			prt.setAnnuler("oui");
			prt.setValider("oui");
			prt.setModifier("oui");
			prt.setTous("oui");
			profilRoleRepository.save(prt);
		}

		return "";
	}

	@RequestMapping(value = "/deleteProfilInfo", method = RequestMethod.POST)

	public @ResponseBody String deleteProfilInfo(@RequestParam int profilId, @RequestParam String action,
			@RequestParam int roleId) {
		ProfilRole prt = profilRoleRepository.getAllProfilRole(roleId, profilId);
		if (prt != null) {
			prt.setAnnuler("non");
			prt.setValider("non");
			prt.setModifier("non");
			prt.setTous("non");
			profilRoleRepository.save(prt);
		}

		return "";
	}

	@RequestMapping(value = "/addAction", method = RequestMethod.POST)

	public @ResponseBody String addAction(@RequestParam int profilId, @RequestParam String action,
			@RequestParam int roleId) {
		ProfilRole prt = profilRoleRepository.getAllProfilRole(roleId, profilId);
		if (prt != null) {
			if (action.equals("annuler")) {
				prt.setAnnuler("oui");
			}
			if (action.equals("valider")) {
				prt.setValider("oui");
			}
			if (action.equals("modifier")) {
				prt.setModifier("oui");


			}

			profilRoleRepository.save(prt);
		}

		return "";
	}

	@RequestMapping(value = "/deleteAction", method = RequestMethod.POST)

	public @ResponseBody String deleteAction(@RequestParam int profilId, @RequestParam String action,
			@RequestParam int roleId) {
		ProfilRole prt = profilRoleRepository.getAllProfilRole(roleId, profilId);
		if (prt != null) {
			if (action.equals("annuler")) {
				prt.setAnnuler("non");
			}
			if (action.equals("valider")) {
				prt.setValider("non");
			}
			if (action.equals("modifier")) {
				prt.setModifier("non");
			}

			profilRoleRepository.save(prt);
		}

		return "";
	}

//	add doc pv+liste presence



	@RequestMapping(value = "/api/getParamm/{profil}", method = RequestMethod.GET)
	public ModelAndView getParamProfil(@PathVariable String profil) {
		Map<String, Object> model = new HashMap<String, Object>();
		if(profil.equals("list")){
			model.put("listF",acteurRepository.getAllCompte());
		}

		return new ModelAndView("compte2/listeCompte", model);
	}

	@RequestMapping(value = "/accessDenied", method = RequestMethod.GET)
	public ModelAndView getPageError() {
		Map<String, Object> model = new HashMap<String, Object>();
			return new ModelAndView("error", model);
	}
	//***** affecter*****//
	/*@RequestMapping(value = "/api/affectNotif", method = RequestMethod.POST)
	public   @ResponseBody void affectNotif(@RequestParam int notif,@RequestParam int cpt,@RequestParam String type) throws JsonProcessingException {
		CompteAffecte sr=new CompteAffecte();

		sr.setDate_Affecte(new Date());
		if(cptAffecteRepository.siExiste(notif)==null) {
			type="A";
		}
		else {
			type="R";
		}
		sr.setType_A(type);
		sr.setCompte(acteurRepository.getOne(cpt));
		sr.setNotification(notifRepository.getOne(notif));
		cptAffecteRepository.save(sr);


	}*/


//**************************************************************************
//**************************************************************************
//  Indispo changement classification
	@RequestMapping(value = "/addIndispo", method = RequestMethod.POST)
	public ModelAndView addIndispo(@RequestBody Indispo ed) {
		Map<String, Object> model = new HashMap<String, Object>();

		indispoRepository.save(ed);

		return new ModelAndView("om/addIndispo", model);
	}

	@RequestMapping(value = "/listeIndispo", method = RequestMethod.GET)
	public ModelAndView listeIndispo() {
		Map<String, Object> model = new HashMap<String, Object>();

		List<Indispo> searchResult = indispoRepository.findAll();
		model.put("listF", searchResult);
		model.put("user",web.getCompteConnected());
		return new ModelAndView("om/listeIndispo", model);
	}

	@RequestMapping(value = "/formToAddIndispo/{id}", method = RequestMethod.GET)
	public ModelAndView formToAddIndispo(@PathVariable Long id) {
		Map<String, Object> model = new HashMap<String, Object>();


		Indispo h=null;
		if(id!=0) {

			h = indispoRepository.getOne(id);
			model.put("Indispo", h);
		}
		else {
			model.put("Indispo", null);
		}


		model.put("user",web.getCompteConnected());

		return new ModelAndView("om/formToAddIndispo", model);
	}



//**************************************************************************
//**************************************************************************


}
