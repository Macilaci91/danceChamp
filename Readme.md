# Dance Championship App

You can query data from the last International Dance Championship 

## Quick Start
```
git clone https://github.com/Macilaci91/danceChamp.git
cd ./danceChamp
docker-compose-up
```

## How to use
```
Query everything from csoport table:
localhost:8087/getCsoportAll

Query every name from csoport:
localhost:8087/getCsoportNev

Query Nev and Pontszam from csoport order by desc
localhost:8087/getNevPontszamDescAnnot

Query Nev and Pontszam from csoport
localhost:8087/getNevPontszamMeth

Query Nev and Pontszam from csoport
localhost:8087/getNevPontszamMethInt
```
