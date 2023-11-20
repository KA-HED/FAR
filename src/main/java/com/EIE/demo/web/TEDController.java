package com.EIE.demo.web;


import com.EIE.demo.dao.TedAebRepository;
import com.EIE.demo.dataService.WebService;
import com.EIE.demo.model.TedAeb;
import org.springframework.beans.factory.annotation.Autowired;
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
@RequestMapping("TedAeb")
public class TEDController {
    @Autowired
    private TedAebRepository tedAebRepository;
    @Autowired
    WebService web;

// TedAeb
    @RequestMapping(value = "/addTedAeb", method = RequestMethod.POST)
    public ModelAndView addTedAeb(@RequestBody TedAeb ed) {
        Map<String, Object> model = new HashMap<String, Object>();

        tedAebRepository.save(ed);

        return new ModelAndView("tedAeb/addTedAeb", model);
    }

    @RequestMapping(value = "/listeTedAeb", method = RequestMethod.GET)
    public ModelAndView listeTedAeb() {
        Map<String, Object> model = new HashMap<String, Object>();

        List<TedAeb> searchResult = tedAebRepository.findAll();
        model.put("listF", searchResult);
        model.put("user",web.getCompteConnected());
        return new ModelAndView("tedAeb/listeTedAeb", model);
    }

    @RequestMapping(value = "/formToAddTedAeb/{id}", method = RequestMethod.GET)
    public ModelAndView formToAddTedAeb(@PathVariable Long id) {
        Map<String, Object> model = new HashMap<String, Object>();


        TedAeb h=null;
        if(id!=0) {

            h = tedAebRepository.getOne(id);
            model.put("TedAeb", h);
        }
        else {
            model.put("TedAeb", null);
        }


        model.put("user",web.getCompteConnected());

        return new ModelAndView("tedAeb/formToAddTedAeb", model);
    }



//**************************************************************************
//**************************************************************************

}
