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
@RequestMapping("api/param")
public class ParamController {
    @Autowired
    private CategorieAEBRepository categorieAEBRepository;
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
    WebService web;

    // CategorieAEB
    @RequestMapping(value = "/addCategorieAEB", method = RequestMethod.POST)
    public ModelAndView addCategorieAEB(@RequestBody CategorieAEB ed) {
        Map<String, Object> model = new HashMap<String, Object>();

        categorieAEBRepository.save(ed);

        return new ModelAndView("param/addCategorieAEB", model);
    }

    @RequestMapping(value = "/listeCategorie_materiel", method = RequestMethod.GET)
    public ModelAndView listeCategorie_materiel() {
        Map<String, Object> model = new HashMap<String, Object>();

        List<CategorieAEB> searchResult = categorieAEBRepository.findAll();
        List<SCategorieAEB> sCategorieAEB = sCategorieAEBRepository.findAll();
        model.put("sCategorieAEB", sCategorieAEB);
        model.put("listF", searchResult);
        model.put("user", web.getCompteConnected());
        return new ModelAndView("param/listeCategorieAEB", model);
    }

    @RequestMapping(value = "/formToAddCategorie_materiel/{id}", method = RequestMethod.GET)
    public ModelAndView formToAddCategorie_materiel(@PathVariable Long id) {
        Map<String, Object> model = new HashMap<String, Object>();


        CategorieAEB h = null;
        if (id != 0) {

            h = categorieAEBRepository.getOne(id);
            model.put("CategorieAEB", h);
        } else {
            model.put("CategorieAEB", null);
        }


        model.put("user", web.getCompteConnected());

        return new ModelAndView("param/formToAddCategorie_materiel", model);
    }

    //deleteCategorieAEB

    @RequestMapping(value = "/deleteCategorieAEB", method = RequestMethod.POST)
    public @ResponseBody String deleteCategorieAEB(@RequestParam Long id) {

        CategorieAEB ma = categorieAEBRepository.getOne(id);
        categorieAEBRepository.delete(ma);

        return "ok";
    }

    //deleteScategorieAEB

    @RequestMapping(value = "/deleteSCategorieAEB", method = RequestMethod.POST)
    public @ResponseBody String deleteSCategorieAEB(@RequestParam Long id) {

        SCategorieAEB ma = sCategorieAEBRepository.getOne(id);
        sCategorieAEBRepository.delete(ma);

        return "ok";
    }


//*******************************************************************************
//SCategorieAEB

    @RequestMapping(value = "/addSCategorieAEB", method = RequestMethod.POST)
    public ModelAndView addSCategorieAEB(@RequestBody SCategorieAEB ed) {
        Map<String, Object> model = new HashMap<String, Object>();

        sCategorieAEBRepository.save(ed);

        return new ModelAndView("param/listeSCategorieAEB", model);
    }

    @RequestMapping(value = "/listeSCategorieAEB", method = RequestMethod.GET)
    public ModelAndView listeSCategorieAEB() {
        Map<String, Object> model = new HashMap<String, Object>();

        List<SCategorieAEB> searchResult = sCategorieAEBRepository.findAll();
        model.put("listF", searchResult);
        model.put("user", web.getCompteConnected());
        return new ModelAndView("param/listeSCategorieAEB", model);
    }

    @RequestMapping(value = "/formToAddSCategorieAEB/{id}", method = RequestMethod.GET)
    public ModelAndView formToAddSCategorieAEB(@PathVariable Long id) {
        Map<String, Object> model = new HashMap<String, Object>();


        SCategorieAEB h = null;
        if (id != 0) {

            h = sCategorieAEBRepository.getOne(id);
            model.put("SCategorieAEB", h);
        } else {
            model.put("SCategorieAEB", null);
        }


        model.put("user", web.getCompteConnected());

        return new ModelAndView("param/formToAddSCategorieAEB", model);
    }

//**************************************************************************
//**************************************************************************
//*******************************************************************************
//MarqueAEB

    @RequestMapping(value = "/addMarqueAEB", method = RequestMethod.POST)
    public ModelAndView addMarqueAEB(@RequestBody MarqueAEB ed) {
        Map<String, Object> model = new HashMap<String, Object>();

        marqueAEBRepository.save(ed);

        return new ModelAndView("param/listeMarqueAEB", model);
    }

    @RequestMapping(value = "/listeMarqueAEB", method = RequestMethod.GET)
    public ModelAndView listeMarqueAEB() {
        Map<String, Object> model = new HashMap<String, Object>();

        List<MarqueAEB> searchResult = marqueAEBRepository.findAll();
        model.put("listF", searchResult);
        model.put("user", web.getCompteConnected());
        return new ModelAndView("param/listeMarqueAEB", model);
    }

    @RequestMapping(value = "/formToAddMarqueAEB/{id}", method = RequestMethod.GET)
    public ModelAndView formToAddMarqueAEB(@PathVariable Long id) {
        Map<String, Object> model = new HashMap<String, Object>();


        MarqueAEB h = null;
        if (id != 0) {

            h = marqueAEBRepository.getOne(id);
            model.put("MarqueAEB", h);
        } else {
            model.put("MarqueAEB", null);
        }


        List<TypeAEB> type = typeAEBRepository.findAll();
        model.put("TypeAEB", type);
        model.put("TypeAEBMarqueAEB",  typeAEBRepository.getsTypeAEBbymarque(id));
        model.put("VersionAebMarqueAEB", versionAebRepository.getsVersionAebByTypeAEB(typeAEBRepository.getsoneTypeAEBbymarque(id).getTypeId()));
        model.put("user", web.getCompteConnected());

        return new ModelAndView("param/formToAddMarqueAEB", model);
    }
    //deleteMarqueAEB

    @RequestMapping(value = "/deleteMarqueAEB", method = RequestMethod.POST)
    public @ResponseBody String deleteMarqueAEB(@RequestParam Long id) {

        MarqueAEB ma = marqueAEBRepository.getOne(id);
        marqueAEBRepository.delete(ma);

        return "ok";
    }

//**************************************************************************
//**************************************************************************//*******************************************************************************
//Services_bureaux

    @RequestMapping(value = "/addServices_bureaux", method = RequestMethod.POST)
    public ModelAndView addServices_bureaux(@RequestBody Services_bureaux ed) {
        Map<String, Object> model = new HashMap<String, Object>();

        services_bureauxRepository.save(ed);

        return new ModelAndView("param/listeServices_bureaux", model);
    }

    @RequestMapping(value = "/listeServices_bureaux", method = RequestMethod.GET)
    public ModelAndView listeServices_bureaux() {
        Map<String, Object> model = new HashMap<String, Object>();

        List<Services_bureaux> searchResult = services_bureauxRepository.findAll();
        model.put("listF", searchResult);
        model.put("user", web.getCompteConnected());
        return new ModelAndView("param/listeServices_bureaux", model);
    }

    @RequestMapping(value = "/formToAddServices_bureaux/{id}", method = RequestMethod.GET)
    public ModelAndView formToAddServices_bureaux(@PathVariable Long id) {
        Map<String, Object> model = new HashMap<String, Object>();


        Services_bureaux h = null;
        if (id != 0) {

            h = services_bureauxRepository.getOne(id);
            model.put("Services_bureaux", h);
        } else {
            model.put("Services_bureaux", null);
        }


        model.put("user", web.getCompteConnected());

        return new ModelAndView("param/formToAddServices_bureaux", model);
    }

//**************************************************************************
//**************************************************************************//**************************************************************************//*******************************************************************************
//AbcDetenteur

    @RequestMapping(value = "/addAbcDetenteur", method = RequestMethod.POST)
    public ModelAndView addAbcDetenteur(@RequestBody AbcDetenteur ed) {
        Map<String, Object> model = new HashMap<String, Object>();

        abcDetenteurRepository.save(ed);

        return new ModelAndView("param/listeAbcDetenteur", model);
    }

    @RequestMapping(value = "/listeAbcDetenteur", method = RequestMethod.GET)
    public ModelAndView listeAbcDetenteur() {
        Map<String, Object> model = new HashMap<String, Object>();

        List<AbcDetenteur> searchResult = abcDetenteurRepository.findAll();
        model.put("listF", searchResult);
        model.put("user", web.getCompteConnected());
        return new ModelAndView("param/listeAbcDetenteur", model);
    }

    @RequestMapping(value = "/formToAddAbcDetenteur/{id}", method = RequestMethod.GET)
    public ModelAndView formToAddAbcDetenteur(@PathVariable Long id) {
        Map<String, Object> model = new HashMap<String, Object>();


        AbcDetenteur h = null;
        if (id != 0) {

            h = abcDetenteurRepository.getOne(id);
            model.put("AbcDetenteur", h);
        } else {
            model.put("AbcDetenteur", null);
        }


        model.put("user", web.getCompteConnected());

        return new ModelAndView("param/formToAddAbcDetenteur", model);
    }

//**************************************************************************
//**************************************************************************



//**************************************************************************
//**************************************************************************//**************************************************************************//*******************************************************************************
//Detenteur

    @RequestMapping(value = "/addDetenteur", method = RequestMethod.POST)
    public ModelAndView addDetenteur(@RequestBody Detenteur ed) {
        Map<String, Object> model = new HashMap<String, Object>();

        detenteurRepository.save(ed);

        return new ModelAndView("param/listeDetenteur", model);
    }

    @RequestMapping(value = "/listeDetenteur", method = RequestMethod.GET)
    public ModelAndView listeDetenteur() {
        Map<String, Object> model = new HashMap<String, Object>();

        List<Detenteur> searchResult = detenteurRepository.findAll();
        model.put("listF", searchResult);
        model.put("user", web.getCompteConnected());
        return new ModelAndView("param/listeDetenteur", model);
    }

    @RequestMapping(value = "/formToAddDetenteur/{id}", method = RequestMethod.GET)
    public ModelAndView formToAddDetenteur(@PathVariable Long id) {
        Map<String, Object> model = new HashMap<String, Object>();


        Detenteur h = null;
        if (id != 0) {

            h = detenteurRepository.getOne(id);
            model.put("Detenteur", h);
        } else {
            model.put("Detenteur", null);
        }


        model.put("user", web.getCompteConnected());

        return new ModelAndView("param/formToAddDetenteur", model);
    }

//**************************************************************************
//**************************************************************************


//**************************************************************************
//**************************************************************************//**************************************************************************//*******************************************************************************
//Detachement_Vehicules

    @RequestMapping(value = "/addDetachement_Vehicules", method = RequestMethod.POST)
    public ModelAndView addDetachement_Vehicules(@RequestBody Detachement_Vehicules ed) {
        Map<String, Object> model = new HashMap<String, Object>();

        detachement_VehiculesRepository.save(ed);

        return new ModelAndView("param/listeDetachement_Vehicules", model);
    }

    @RequestMapping(value = "/listeDetachement_Vehicules", method = RequestMethod.GET)
    public ModelAndView listeDetachement_Vehicules() {
        Map<String, Object> model = new HashMap<String, Object>();

        List<Detachement_Vehicules> searchResult = detachement_VehiculesRepository.findAll();
        model.put("listF", searchResult);
        model.put("user", web.getCompteConnected());
        return new ModelAndView("param/listeDetachement_Vehicules", model);
    }

    @RequestMapping(value = "/formToAddDetachement_Vehicules/{id}", method = RequestMethod.GET)
    public ModelAndView formToAddDetachement_Vehicules(@PathVariable Long id) {
        Map<String, Object> model = new HashMap<String, Object>();


        Detachement_Vehicules h = null;
        if (id != 0) {

            h = detachement_VehiculesRepository.getOne(id);
            model.put("Detachement_Vehicules", h);
        } else {
            model.put("Detachement_Vehicules", null);
        }


//        model.put("user", web.getCompteConnected());
        model.put("user", web.getCompteConnected());

        return new ModelAndView("param/formToAddDetachement_Vehicules", model);
    }

//**************************************************************************
//**************************************************************************//**************************************************************************//*******************************************************************************
//ModeleAeb

    @RequestMapping(value = "/addModeleAeb", method = RequestMethod.POST)
    public ModelAndView addModeleAeb(@RequestBody ModeleAeb ed) {
        Map<String, Object> model = new HashMap<String, Object>();

        if(ed.getModeleId()==null){
            ed.setModeleId(modeleAebRepository.getmaxid());
//            ed.setNomineralogique("ok");
//            ed.setNumChassis("ok");
//            ed.setUntIdEmg(1L);
//            ed.setPosIdEmg("349");
        }
        modeleAebRepository.save(ed);

        return new ModelAndView("param/listeModeleAeb", model);
    }

    @RequestMapping(value = "/listeModeleAeb", method = RequestMethod.GET)
    public ModelAndView listeModeleAeb() {
        Map<String, Object> model = new HashMap<String, Object>();

        List<ModeleAeb> searchResult = modeleAebRepository.findAll();
        model.put("listF", searchResult);
        model.put("user", web.getCompteConnected());
        return new ModelAndView("param/listeModeleAeb", model);
    }

    @RequestMapping(value = "/formToAddModeleAeb/{id}", method = RequestMethod.GET)
    public ModelAndView formToAddModeleAeb(@PathVariable Long id) {
        Map<String, Object> model = new HashMap<String, Object>();


        ModeleAeb h = null;
        if (id != 0) {

            h = modeleAebRepository.getOne(id);
            model.put("ModeleAeb", h);
        } else {
            model.put("ModeleAeb", null);
        }
        List<CategorieAEB> cat = categorieAEBRepository.findAll();
        List<SCategorieAEB> scat = sCategorieAEBRepository.findAll();
        List<MarqueAEB> marq = marqueAEBRepository.findAll();
        List<TypeAEB> typeAEBS = typeAEBRepository.findAll();
        List<VersionAeb> versionAeb = versionAebRepository.findAll();
        model.put("CategorieAEB", cat);
        model.put("SCategorieAEB", scat);
        model.put("MarqueAEB", marq);
        model.put("TypeAEB", typeAEBS);
        model.put("VersionAeb", versionAeb);
        model.put("Pays", paysRepository.findAll());
        model.put("user", web.getCompteConnected());

        return new ModelAndView("param/formToAddModeleAeb", model);
    }

//**************************************************************************
//**************************************************************************//**************************************************************************//*******************************************************************************
//Art

    @RequestMapping(value = "/addArt", method = RequestMethod.POST)
    public ModelAndView addArt(@RequestBody Art ed) {
        Map<String, Object> model = new HashMap<String, Object>();

        if(ed.getnNomencl()==null){
            ed.setnNomencl(artRepository.getmaxid());
            ed.setNomineralogique("ok");
            ed.setNumChassis("ok");
            ed.setUntIdEmg(1L);
            ed.setPosIdEmg("349");
        }
        artRepository.save(ed);

        return new ModelAndView("param/listeArt", model);
    }

    @RequestMapping(value = "/listeArt", method = RequestMethod.GET)
    public ModelAndView listeArt() {
        Map<String, Object> model = new HashMap<String, Object>();

        List<Art> searchResult = artRepository.findAll();
        model.put("listF", searchResult);
        model.put("user", web.getCompteConnected());
        return new ModelAndView("param/listeArt", model);
    }

    @RequestMapping(value = "/formToAddArt/{id}", method = RequestMethod.GET)
    public ModelAndView formToAddArt(@PathVariable Long id) {
        Map<String, Object> model = new HashMap<String, Object>();


        Art h = null;
        if (id != 0) {

            h = artRepository.getOne(id);
            model.put("Art", h);
        } else {
            model.put("Art", null);
        }
        List<CategorieAEB> cat = categorieAEBRepository.findAll();
        List<SCategorieAEB> scat = sCategorieAEBRepository.findAll();
        List<MarqueAEB> marq = marqueAEBRepository.findAll();
        List<TypeAEB> typeAEBS = typeAEBRepository.findAll();
        List<VersionAeb> versionAeb = versionAebRepository.findAll();
        model.put("CategorieAEB", cat);
        model.put("SCategorieAEB", scat);
        model.put("MarqueAEB", marq);
        model.put("TypeAEB", typeAEBS);
        model.put("VersionAeb", versionAeb);
        model.put("user", web.getCompteConnected());

        return new ModelAndView("param/formToAddArt", model);
    }
//**************************************************************************
//**************************************************************************


//**************************************************************************
//**************************************************************************//**************************************************************************//*******************************************************************************
//Mar

    @RequestMapping(value = "/addMar", method = RequestMethod.POST)
    public ModelAndView addMar(@RequestBody Mar ed) {
        Map<String, Object> model = new HashMap<String, Object>();

        marRepository.save(ed);

        return new ModelAndView("param/listeMar", model);
    }

    @RequestMapping(value = "/listeMar", method = RequestMethod.GET)
    public ModelAndView listeMar() {
        Map<String, Object> model = new HashMap<String, Object>();

        List<Mar> searchResult = marRepository.findAll();
        model.put("listF", searchResult);
        model.put("user", web.getCompteConnected());
        return new ModelAndView("param/listeMar", model);
    }

    @RequestMapping(value = "/formToAddMar/{id}", method = RequestMethod.GET)
    public ModelAndView formToAddMar(@PathVariable Long id) {
        Map<String, Object> model = new HashMap<String, Object>();


        Mar h = null;
        if (id != 0) {

            h = marRepository.getOne(id);
            model.put("Mar", h);
        } else {
            model.put("Mar", null);
        }


        model.put("user", web.getCompteConnected());

        return new ModelAndView("param/formToAddMar", model);
    }

//**************************************************************************


    @GetMapping(value = "/getsCategorieAEBbyCat/{id}")
    public ModelAndView getsCategorieAEBbyCat(@PathVariable Long id) {
        Map<String, Object> model = new HashMap<>();

        List<SCategorieAEB> SCategorieAEB = sCategorieAEBRepository.getsCategorieAEBbyCat(id);
        model.put("SCategorieAEB", SCategorieAEB);

        model.put("id", id);
        return new ModelAndView("param/selectop", model);
    }

//**************************************************************************
// TypeAEB
@RequestMapping(value = "/addTypeAEB", method = RequestMethod.POST)
public ModelAndView addTypeAEB(@RequestBody TypeAEB ed) {
    Map<String, Object> model = new HashMap<String, Object>();
    if(ed.getTypeId()==null){
        ed.setTypeId(typeAEBRepository.getmaxid());
    }
    typeAEBRepository.save(ed);

    model.put("TypeAEBMarqueAEB", typeAEBRepository.getsTypeAEBbymarque(ed.getMarque().getMarqueId()));

    return new ModelAndView("param/addTypeAEB", model);
}

    @RequestMapping(value = "/listeTypeAEB", method = RequestMethod.GET)
    public ModelAndView listeTypeAEB() {
        Map<String, Object> model = new HashMap<String, Object>();

        List<TypeAEB> searchResult = typeAEBRepository.findAll();
        model.put("listF", searchResult);
        model.put("user", web.getCompteConnected());
        return new ModelAndView("param/listeTypeAEB", model);
    }
//    deleteTypeAEB
    @RequestMapping(value = "/deleteTypeAEB", method = RequestMethod.POST)
    public @ResponseBody String deleteTypeAEB(@RequestParam Long id) {

        TypeAEB ed = typeAEBRepository.getOne(id);
        typeAEBRepository.delete(ed);

        return "ok";
    }
//*******************************************************************************
//*******************************************************************************//**************************************************************************
// VersionAeb
@RequestMapping(value = "/addVersionAeb", method = RequestMethod.POST)
public ModelAndView addVersionAeb(@RequestBody VersionAeb ed) {
    Map<String, Object> model = new HashMap<String, Object>();
    if(ed.getVersionId()==null){
        ed.setVersionId(versionAebRepository.getmaxid());
    }
    versionAebRepository.save(ed);

    model.put("VersionAebMarqueAEB", versionAebRepository.getsVersionAebByTypeAEB(ed.getTypeId()));

    return new ModelAndView("param/addVersions", model);
}

    @RequestMapping(value = "/listeVersionAeb", method = RequestMethod.GET)
    public ModelAndView listeVersionAeb() {
        Map<String, Object> model = new HashMap<String, Object>();

        List<VersionAeb> searchResult = versionAebRepository.findAll();
        model.put("listF", searchResult);
        model.put("user", web.getCompteConnected());
        return new ModelAndView("param/listeVersionAeb", model);
    }
//    deleteVersionAeb
    @RequestMapping(value = "/deleteVersionAeb", method = RequestMethod.POST)
    public @ResponseBody String deleteVersionAeb(@RequestParam Long id) {

        VersionAeb ed = versionAebRepository.getOne(id);
        versionAebRepository.delete(ed);

        return "ok";
    }

//    show_Versions2
    @RequestMapping(value = "/show_Versions2", method = RequestMethod.POST)
    public @ResponseBody ModelAndView show_Versions2(@RequestParam Long id) {

        Map<String, Object> model = new HashMap<String, Object>();
        model.put("VersionAebMarqueAEB", versionAebRepository.getsVersionAebByTypeAEB(id));

        return new ModelAndView("param/addVersions", model);
    }

    @RequestMapping(value = "/show_Versions", method = RequestMethod.POST)
    public ModelAndView show_Versions(@RequestBody Long id) {
        Map<String, Object> model = new HashMap<String, Object>();

//        versionAebRepository.getsVersionAebByTypeAEB(id);

        model.put("VersionAebMarqueAEB", versionAebRepository.getsVersionAebByTypeAEB(id));

        return new ModelAndView("param/addVersions", model);
    }

//*******************************************************************************
//*******************************************************************************



    @RequestMapping(value = "/listeCategorie_materiel/{page}/{size}/{type}", method = RequestMethod.GET)
    public ModelAndView listeCategorie_materiel(@PathVariable int page, @PathVariable int size, @PathVariable int type) {
        Map<String, Object> model = new HashMap<String, Object>();
        Page<CategorieAEB> h = null;
        h = categorieAEBRepository.getAllCategorieAEBPage(new PageRequest(page, size));
        if (h != null) {
            List<CategorieAEB> searchResult = h.getContent();
            model.put("listF", searchResult);
            model.put("total", h.getTotalElements());
            model.put("number", h.getNumber());
            model.put("page", 0);
            model.put("totalPage", h.getTotalPages());
            model.put("size", h.getSize());
            model.put("type", type);

        } else {
            model.put("totalPage", 0);
        }
        model.put("user", web.getCompteConnected());

        return new ModelAndView("param/listeCategorieAEB", model);
    }


}
