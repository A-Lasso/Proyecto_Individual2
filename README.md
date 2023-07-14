## **ETL.ipynb**
En este archivo se encuentra:la importación de los csv desde la API, la limpieza de los datos de cada dataset traido por la API, la creación de nuevos dataset para más adelante la relación entre estos.<br>
Con la creación de los csv que contienen los id de cada lugar, se creo en cada dataset (que tuviera justamente columnas de categorias de lugares ) un id representando cada lugar y luego se eliminaron las columnas que tenian los valores en string.<br>
Para esto antes se verifico que cada uno de los dataset tuviera los mismos valores en estas columnas, y para el caso de las provincias se tuvo que reemplazar los valores para 3 datasets distintos. En el caso de Localidades y Partidos no se tuvo que hacer ningún reemplazo (Por suerte ya que el anterior fue hecho manualmente pero en estas columnas habian 400 y casi 400 valores distintos) pero si el dataset "Acces_Inter_VelBajada_Localidad" contenia más localidades y partidos que los otros dos dataset con esta información, asi que simplemente se agregaron estos valores nuevos con sus propios id's (siendo continuación de donde quedaron los últimos en forma creciente).

## **EDA.ipynb**
Analisis de las relaciones de los datos con los csv ya procesados, viendo la relación dentro de cada uno.

## **csv_api**
Carpeta con todos los dataset que se usan en todo el proyecto. Los de la API ya se encuentran tratados. Los que agregue yo es para conexiones entre estos dataset de la API.

El Readme debe incluir un reporte de análisis con base en sus dashboards, así como el análisis y la funcionalidad de los KPIs sugeridos.