package com.mrv.demoform.service;

import com.mrv.demoform.dao.FormDao;
import com.mrv.demoform.model.FormEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class FormService {
    @Autowired
    private FormDao formDao;

    public void addForm(FormEntity formEntity){
        formDao.addValues(formEntity);
    }
}
