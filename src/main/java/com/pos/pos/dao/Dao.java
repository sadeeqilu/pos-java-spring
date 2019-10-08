package com.pos.pos.dao;

import java.util.List;
import java.util.Optional;

public interface Dao<T> {
    int insert(T t);
    Optional<T> findById(int id);
    List<T> getAll();
    int update(T t);
    int deleteByModel(T t);
    int deleteById(int id);
}
