package com.example.DanceDbRest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;
@Controller
public class CsoportCtrl {
    @Autowired
    private CsoportRepo repoCsoport;

    @GetMapping("/getCsoportAll")
    @ResponseBody
    public Iterable<Csoport> getCsoportAll(){
        return repoCsoport.findAll();
    }

    @GetMapping("/getCsoportNev")
    @ResponseBody
    public Iterable<Csoport> getCsoportNev(){
        return repoCsoport.findNev();
    }

    @GetMapping("/getNevPontszamDescAnnot")
    @ResponseBody
    Iterable<Csoport> findAllTeamByPontszamDesc(){
        return repoCsoport.findAllTeamByPontszamDesc();
    }
    @GetMapping("/getNevPontszamMeth")
    @ResponseBody
    Iterable<Csoport> findAllByOrderByPontszamAsc() {
        return repoCsoport.findAllByOrderByPontszamAsc();
    }
    @GetMapping("/getNevPontszamMethInt")
    @ResponseBody
    Iterable<CsoportInterface> findAllByOrderByPontszamDesc() {
        return repoCsoport.findAllByOrderByPontszamDesc();
    }


}
