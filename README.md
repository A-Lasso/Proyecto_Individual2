# **Contexto**
Las telecomunicaciones se refieren a la transmisión de información a través de medios electrónicos, como la telefonía, la televisión, la radio y, más recientemente, el internet. Estos medios de comunicación permiten la transmisión de información entre personas, organizaciones y dispositivos a largas distancias.<br>

El internet, por su parte, es una red global de computadoras interconectadas que permite el intercambio de información en tiempo real. Desde su creación, ha tenido un impacto significativo en la vida de las personas, transformando la manera en que nos comunicamos, trabajamos, aprendemos y nos entretenemos.

# **Rol a desarrollar**

En este contexto, una empresa prestadora de servicios de telecomunicaciones me encargó la realización de un análisis completo que permita reconocer el comportamiento de este sector a nivel nacional. Consideremos que la principal actividad de la empresa es brindar acceso a internet, pero también es importante ver el comportamiento asociado al resto de los servicios de comunicación, con el fin de orientar a la empresa en brindar una buena calidad de sus servicios, identificar oportunidades de crecimiento y poder plantear soluciones personalizadas a sus posibles clientes.

## **ETL.ipynb**
En este archivo se encuentra:la importación de los csv desde la API, la limpieza de los datos de cada dataset traido por la API, la creación de nuevos dataset para más adelante la relación entre estos.<br>
Con la creación de los csv que contienen los id de cada lugar, se creo en cada dataset (que tuviera justamente columnas de categorias de lugares ) un id representando cada lugar y luego se eliminaron las columnas que tenian los valores en string.<br>
Para esto antes se verifico que cada uno de los dataset tuviera los mismos valores en estas columnas, y para el caso de las provincias se tuvo que reemplazar los valores para 3 datasets distintos. En el caso de Localidades y Partidos no se tuvo que hacer ningún reemplazo (Por suerte ya que el anterior fue hecho manualmente pero en estas columnas habian 400 y casi 400 valores distintos) pero si el dataset "Acces_Inter_VelBajada_Localidad" contenia más localidades y partidos que los otros dos dataset con esta información, asi que simplemente se agregaron estos valores nuevos con sus propios id's (siendo continuación de donde quedaron los últimos en forma creciente).<br>
Con el analisis de cada dataset de nulos y valores se fue anotando las cosas por hacer, para evitar conflictos en el formato csv que podría generar hacer cambios en mysql, se hace todo en el archivo ETL.ipynb.

## **Archivos sql**
Se crearon tablas para importar los csv y hacer las conexiones entre las tablas (Foreign key y primary key) asi luego se exporta el database de mysql a Power BI y que ya quede con sus debidas conexiones.<br>

## **EDA.ipynb**
Analisis de las relaciones de los datos con los csv ya procesados, viendo la relación dentro de cada uno.<br>

## **csv_api**
Carpeta con todos los dataset que se usan en todo el proyecto. Los de la API ya se encuentran tratados. Los que agregue yo es para conexiones entre estos dataset de la API.

El Readme debe incluir un reporte de análisis con base en sus dashboards, así como el análisis y la funcionalidad de los KPIs sugeridos.