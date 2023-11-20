package com.EIE.demo.web;


import com.EIE.demo.dao.OMRepository;
import com.EIE.demo.dataService.WebService;
import com.EIE.demo.model.OM;
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
@RequestMapping("OM")
public class OMController {
    @Autowired
    private OMRepository oMRepository;
    @Autowired
    WebService web;

// OM
    @RequestMapping(value = "/addOM", method = RequestMethod.POST)
    public ModelAndView addOM(@RequestBody OM ed) {
        Map<String, Object> model = new HashMap<String, Object>();

        oMRepository.save(ed);

        return new ModelAndView("om/addOM", model);
    }

    @RequestMapping(value = "/listeOM", method = RequestMethod.GET)
    public ModelAndView listeOM() {
        Map<String, Object> model = new HashMap<String, Object>();

        List<OM> searchResult = oMRepository.findAll();
        model.put("listF", searchResult);
        model.put("user",web.getCompteConnected());
        return new ModelAndView("om/listeOM", model);
    }

    @RequestMapping(value = "/formToAddOM/{id}", method = RequestMethod.GET)
    public ModelAndView formToAddOM(@PathVariable Long id) {
        Map<String, Object> model = new HashMap<String, Object>();


        OM h=null;
        if(id!=0) {

            h = oMRepository.getOne(id);
            model.put("OM", h);
        }
        else {
            model.put("OM", null);
        }


        model.put("user",web.getCompteConnected());

        return new ModelAndView("om/formToAddOM", model);
    }



//**************************************************************************
//**************************************************************************
//  OM changement classification
    @RequestMapping(value = "/addOM_changement_classification", method = RequestMethod.POST)
    public ModelAndView addOM_changement_classification(@RequestBody OM ed) {
        Map<String, Object> model = new HashMap<String, Object>();

        oMRepository.save(ed);

        return new ModelAndView("om/addOM_changement_classification", model);
    }

    @RequestMapping(value = "/listeOM_changement_classification", method = RequestMethod.GET)
    public ModelAndView listeOM_changement_classification() {
        Map<String, Object> model = new HashMap<String, Object>();

        List<OM> searchResult = oMRepository.findAll();
        model.put("listF", searchResult);
        model.put("user",web.getCompteConnected());
        return new ModelAndView("om/listeOM_changement_classification", model);
    }

    @RequestMapping(value = "/formToAddOM_changement_classification/{id}", method = RequestMethod.GET)
    public ModelAndView formToAddOM_changement_classification(@PathVariable Long id) {
        Map<String, Object> model = new HashMap<String, Object>();


        OM h=null;
        if(id!=0) {

            h = oMRepository.getOne(id);
            model.put("OM", h);
        }
        else {
            model.put("OM", null);
        }


        model.put("user",web.getCompteConnected());

        return new ModelAndView("om/formToAddOM_changement_classification", model);
    }



//**************************************************************************
//**************************************************************************

}
