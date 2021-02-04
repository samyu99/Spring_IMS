package com.virtusa.myapp.teamg.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.virtusa.myapp.teamg.model.Model;

public interface ModelRepository<T extends Model> extends JpaRepository<T, Long>
{
}
 


