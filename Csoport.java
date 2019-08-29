package com.example.DanceDbRest;

import lombok.Data;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Data
public class Csoport {
    @Id
    String nev;
    String nemzetiseg;
    int pontszam;
    int atlagEletkor;

    public String getNev() {
        return nev;
    }

    public void setNev(String nev) {
        this.nev = nev;
    }

    public int getAtlagEletkor() {
        return atlagEletkor;
    }

    public void setAtlagEletkor(int atlagEletkor) {
        this.atlagEletkor = atlagEletkor;
    }

    public String getNemzetiseg() {
        return nemzetiseg;
    }

    public void setNemzetiseg(String nemzetiseg) {
        this.nemzetiseg = nemzetiseg;
    }

    public int getPontszam() {
        return pontszam;
    }

    public void setPontszam(int pontszam) {
        this.pontszam = pontszam;
    }

}
