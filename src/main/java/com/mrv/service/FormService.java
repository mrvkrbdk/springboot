package com.mrv.service;

import com.mrv.dao.FormDao;
import com.mrv.model.FormEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;

public class FormService {
    @Autowired
    @Qualifier("mysql")
    private FormDao formDao;

    public void addForm(FormEntity formEntity){
        formDao.addValues(formEntity);
    }
}
