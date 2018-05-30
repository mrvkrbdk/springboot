package com.mrv.demoform.controller;


import com.mrv.demoform.model.FormEntity;
import com.mrv.demoform.service.FormService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/process")
class control {
/*
    @RequestMapping("/")
    public String home(){
        return "index";
    }*/

    @Autowired
    private FormService formService;
    @RequestMapping(name = "/process",method = RequestMethod.GET)
    public String addForm(@ModelAttribute FormEntity formEntity){
        formService.addForm(formEntity);
        return "success";
    }
}
