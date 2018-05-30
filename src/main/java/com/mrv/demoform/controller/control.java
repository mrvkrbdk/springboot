package com.mrv.demoform.controller;


import com.mrv.model.FormEntity;
import com.mrv.service.FormService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/process")
public class control {
    private FormService formService;

    @RequestMapping(method = RequestMethod.GET)
    public String addForm(@ModelAttribute FormEntity formEntity){
        formService.addForm(formEntity);
        return "success";
    }
}
