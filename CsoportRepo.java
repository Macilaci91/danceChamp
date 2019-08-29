package com.example.DanceDbRest;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface CsoportRepo extends CrudRepository<Csoport,String> {

    @Query("SELECT nemzetiseg FROM Csoport")
    Iterable<Csoport> findNev();

    @Query("SELECT nev,pontszam FROM Csoport ORDER BY pontszam DESC")
    Iterable<Csoport> findAllTeamByPontszamDesc();

    Iterable<Csoport> findAllByOrderByPontszamAsc();

    Iterable<CsoportInterface> findAllByOrderByPontszamDesc();


}
