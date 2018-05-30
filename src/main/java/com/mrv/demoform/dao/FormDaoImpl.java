package com.mrv.demoform.dao;

import com.mrv.demoform.model.FormEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import javax.sql.DataSource;

@Repository
public class FormDaoImpl implements FormDao{

    @Autowired
    JdbcTemplate jdbcTemplate;
    @Override
    public void addValues(FormEntity fe){
        String sql="insert into info values(?,?,?,?,?,?,?,?,?,?,?)";
        jdbcTemplate.update(sql, new Object[]{fe.getAd(),fe.getTc(),fe.getTel(),fe.getAdres(),fe.getEmail(),fe.getDt(),fe.isPerakende(),fe.getTercih(),fe.getIlilcesemt(),fe.getMiktar(),fe.getEk()});
    }


}
