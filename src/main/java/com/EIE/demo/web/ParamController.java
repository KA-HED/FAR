package com.EIE.demo.web;


import com.EIE.demo.dao.CategorieAEBRepository;
import com.EIE.demo.dao.SCategorieAEBRepository;
import com.EIE.demo.dataService.WebService;
import com.EIE.demo.model.CategorieAEB;
import com.EIE.demo.model.SCategorieAEB;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
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
