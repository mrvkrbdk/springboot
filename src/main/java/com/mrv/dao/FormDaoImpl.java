package com.mrv.dao;

import com.mrv.model.FormEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import javax.sql.DataSource;
import java.sql.ResultSet;
import java.sql.SQLException;

public class FormDaoImpl implements FormDao{
    @Autowired
    DataSource dataSource;
    @Autowired
    JdbcTemplate jdbcTemplate;
    public void addValues(FormEntity fe){
        String sql="insert into info values(?,?,?,?,?,?,?,?,?,?,?)";
        jdbcTemplate.update(sql, new Object[]{fe.getAd(),fe.getTc(),fe.getTel(),fe.getAdres(),fe.getEmail(),fe.getDt(),fe.isPerakende(),fe.getTercih(),fe.getIlilcesemt(),fe.getMiktar(),fe.getEk()});
    }


}
