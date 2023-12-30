package com.EIE.demo.web;


import com.EIE.demo.dao.*;
import com.EIE.demo.dataService.WebService;
import com.EIE.demo.model.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("ECGSM")
public class EcgsmController {
    @Autowired
    private Compte_RenduRepository compte_RenduRepository;
    @Autowired
    private SCategorieAEBRepository sCategorieAEBRepository;
    @Autowired
    private MarqueAEBRepository marqueAEBRepository;
    @Autowired
    private Services_bureauxRepository services_bureauxRepository;
    @Autowired
    private AbcDetenteurRepository abcDetenteurRepository;
    @Autowired
    private DetenteurRepository detenteurRepository;
    @Autowired
    private Detachement_VehiculesRepository detachement_VehiculesRepository;
    @Autowired
    private ArtRepository artRepository;
    @Autowired
    private TedAebRepository tedAebRepository;
    @Autowired
    private TypeAEBRepository typeAEBRepository;
    @Autowired
    private VersionAebRepository versionAebRepository;
    @Autowired
    private MarRepository marRepository;
    @Autowired
    private ModeleAebRepository modeleAebRepository;
    @Autowired
    private PaysRepository paysRepository;
    @Autowired
    OMRepository oMRepository;
    @Autowired
    UnitesCribleesRepository unitesCribleesRepository;
    @Autowired
    LigneOmRepository ligneOmRepository;
    @Autowired
    WebService web;

    // Compte_Rendu
    @RequestMapping(value = "/addCompte_Rendu", method = RequestMethod.POST)
    public ModelAndView addCompte_Rendu(@RequestBody Compte_Rendu ed) {
        Map<String, Object> model = new HashMap<String, Object>();

        compte_RenduRepository.save(ed);

        return new ModelAndView("ECGSM/addCompte_Rendu", model);
    }

    @RequestMapping(value = "/listeCompte_Rendu", method = RequestMethod.GET)
    public ModelAndView listeCompte_Rendu() {
        Map<String, Object> model = new HashMap<String, Object>();

        List<Compte_Rendu> searchResult = compte_RenduRepository.findAll();

        model.put("listF", searchResult);
        model.put("user", web.getCompteConnected());
        return new ModelAndView("ECGSM/listeCompte_Rendu", model);
    }

    @RequestMapping(value = "/formToAddCompte_Rendu/{id}", method = RequestMethod.GET)
    public ModelAndView formToAddCompte_Rendu(@PathVariable Long id) {
        Map<String, Object> model = new HashMap<String, Object>();


        Compte_Rendu h = null;
        if (id != 0) {

            h = compte_RenduRepository.getOne(id);
            model.put("Compte_Rendu", h);
        } else {
            model.put("Compte_Rendu", null);
        }

        List<OM> listom = oMRepository.findAll();
        List<UnitesCriblees> unt= unitesCribleesRepository.findAll();

        model.put("listeom", listom);
        model.put("unt", unt);
        model.put("user", web.getCompteConnected());

        return new ModelAndView("ECGSM/formToAddCompte_Rendu", model);
    }

    //deleteCompte_Rendu

    @RequestMapping(value = "/deleteCompte_Rendu", method = RequestMethod.POST)
    public @ResponseBody String deleteCompte_Rendu(@RequestParam Long id) {

        Compte_Rendu ma = compte_RenduRepository.getOne(id);
        compte_RenduRepository.delete(ma);

        return "ok";
    }

    @RequestMapping(value = "/selecteLigneOM", method = RequestMethod.POST)
    public @ResponseBody ModelAndView selecteLigneOM(@RequestParam Long id) {
        Map<String, Object> model = new HashMap<String, Object>();

        List<LigneOm> lOM =  ligneOmRepository.getLigneOmbyOM(id);
        model.put("LigneOm", lOM);

        return new ModelAndView("ECGSM/addligneOm", model);
    }
    @RequestMapping(value = "/selecteLigne_OM", method = RequestMethod.POST)
    public @ResponseBody ModelAndView selecteLigne_OM(@RequestParam Long id) {

        Map<String, Object> model = new HashMap<String, Object>();
        List<LigneOm> lOM =  ligneOmRepository.getLigneOmbyOM(id);
        model.put("LigneOm", lOM);

        return new ModelAndView("ECGSM/addligneOm", model);
    }



}
