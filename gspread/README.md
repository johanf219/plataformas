# Como

## crear

```
docker build -t baseflask .
```

## ejecutar

**IMPORTANTE** para poder ejecutar este contenedor es necesario tener un archivo llamado `demo-ls.json` y el  cual es generado de acuerdo a la documentacion indicada en [este enlace](https://gspread.readthedocs.io/en/latest/oauth2.html).
**Sin este archivo el programa no podra correr**.

```
docker run --rm -it -p 5001:5000 -v $(pwd):/workdir -d baseflask
```

## Como consumir los web services

Acceder al metodo `A1` del programa `demo-gspread.py`

```
curl -X GET -H "Content-type: application/json" -d '{"saludo": "gutten neicht" }' http://localhost:5001/
```

Acceder al metodo `obtenervalor` del programa `demo-gspread.py`

```
curl -X POST -H "Content-type: application/json" -d '{"row": "3", "col": "2" }' http://localhost:5001/obtenervalor
```

Acceder al metodo `ponervalor` del progama `demo-gspread.py`

```
curl -X POST -H "Content-type: application/json" -d '{"row": "3", "col": "2", "val": "docker" }' http://localhost:5001/ponervalor
```
