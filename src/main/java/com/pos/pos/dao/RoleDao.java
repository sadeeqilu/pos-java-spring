package com.pos.pos.dao;

import com.pos.pos.model.Role;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository("postgres")
public class RoleDao implements Dao<Role>{

    private JdbcTemplate jdbcTemplate;

    @Autowired
    public RoleDao(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    @Override
    public int insert(Role role) {
        final String sql = "Insert into roles values(?)";
//        return jdbcTemplate.
        return 0;
    }

    @Override
    public Optional<Role> findById(int id) {
        return Optional.empty();
    }

    @Override
    public List<Role> getAll() {
        return null;
    }

    @Override
    public int update(Role role) {
        return 0;
    }

    @Override
    public int deleteByModel(Role role) {
        return 0;
    }

    @Override
    public int deleteById(int id) {
        return 0;
    }
}
