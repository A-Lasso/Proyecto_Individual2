# **Contexto**
Las telecomunicaciones se refieren a la transmisión de información a través de medios electrónicos, como la telefonía, la televisión, la radio y, más recientemente, el internet. Estos medios de comunicación permiten la transmisión de información entre personas, organizaciones y dispositivos a largas distancias.<br>

El internet, por su parte, es una red global de computadoras interconectadas que permite el intercambio de información en tiempo real. Desde su creación, ha tenido un impacto significativo en la vida de las personas, transformando la manera en que nos comunicamos, trabajamos, aprendemos y nos entretenemos.

# **Rol a desarrollar**

En este contexto, una empresa prestadora de servicios de telecomunicaciones me encargó la realización de un análisis completo que permita reconocer el comportamiento de este sector a nivel nacional. Consideremos que la principal actividad de la empresa es brindar acceso a internet, pero también es importante ver el comportamiento asociado al resto de los servicios de comunicación, con el fin de orientar a la empresa en brindar una buena calidad de sus servicios, identificar oportunidades de crecimiento y poder plantear soluciones personalizadas a sus posibles clientes.

## **ETL.ipynb**
En este archivo se encuentra la importación de los csv desde la API, la limpieza de los datos de cada dataset traido por la API, la creación de nuevos dataset para más adelante la relación entre estos.<br>
Con la creación de los csv que contienen los id de cada lugar, se creo en cada dataset (que tuviera justamente columnas de categorias de lugares ) un id representando cada lugar y luego se eliminaron las columnas que tenian los valores en string.<br>
Para esto antes se verifico que cada uno de los dataset tuviera los mismos valores en estas columnas, y para el caso de las provincias se tuvo que reemplazar los valores para 3 datasets distintos. En el caso de Localidades y Partidos no se tuvo que hacer ningún reemplazo, pero si el dataset "Acces_Inter_VelBajada_Localidad" contenia más localidades y partidos que los otros dos dataset con esta información, asi que simplemente se agregaron estos valores nuevos con sus propios id's.<br>
Con el analisis de cada dataset de nulos y valores se fue anotando las cosas por hacer. Para evitar conflictos en el formato csv que podría generar mysql se hace todo en el archivo ETL.ipynb.<br>
Se tuvieron que cambiar los "." por vacio en varios dataset y "," por ".", para que detectara el numero int/float. En la mayoria al corroborar el total quedaba de igual manera, en otros se decidio tomar el nuevo total de los nuevos numeros para que la suma sea la correcta.<br>
En la mayoria de datasets se reordenaron los datos para más prolijidad.<br>
Se genero el dataset con todos los id's de ubicación geografica, para tener bien los datos respecto a qué partido pertenece una localidad y a qué provincia un partido.

## **Archivos sql**
Se crearon tablas para importar los csv y hacer las conexiones entre las tablas (Foreign key y primary key) asi luego se exporta el database de mysql a Power BI y que ya quede con sus debidas conexiones.<br>

## **EDA.ipynb**
Analisis de las relaciones de los datos con los csv ya procesados, viendo la relación dentro de cada uno.<br>

## **csv_api**
Carpeta con todos los dataset que se usan en todo el proyecto. Los de la API ya se encuentran tratados. Los que agregue yo es para conexiones entre estos dataset de la API.

## **Imagenes**
Carpeta que contiene imagenes que se utilizan en "EDA.ipynb", estas son graficos generados por pandas_profiling. No todos los analisis/graficos fueron hechos con pandas profiling.

## Dashboard

<p align="center">
<img src=imagenes\dashboard.png >
</p><br>

Con estos graficos se puede ver el poco ingreso que tiene la empresa habiendo regulado la moneda trimestralmente con la del dolar.<br>
Se aprecia una comparación en el efecto de cada acceso de velocidad de bajada de internet con el total. Es decir la cantidad de conexiones que hay por cada velocidad de bajada (clientes con la velocidad contratada). Mostrando una vez más lo visto en el EDA: La supremacia de las conexiones 4G, seguidas por conexiones tipo wireless y telefonia fija.<br>


### KPI's

<p align="center">
<img src=imagenes\Kpi.png >
</p><br>

Viendo los datos y la distribución respecto a ubicaciones me pareció que lo mejor era ir con KPIs que incentiven la mejora tecnológica y el alcance del internet en el país.<br>
El primer KPI siguiendo la mejora tecnológica es llegar a una mayor media (promedio) de Mbps en el país. Para la siguiente meta se le suma un 50% del valor actual.<br>
El segundo KPI siguiendo también el avance tecnológico es el aumentar el porcentaje de accesos a internet fijo con velocidad mayores o iguales a 30 Mbps. Mayor posibilidad de accesos pueden generar esto, y el nivelar los valores de precios a algo realista (hay lugares donde siguen cobrando megas menores a 30 lo mismo que lo que saldría contratar 50) y asi persuadir a las personas que el cambio es completamente positivo.<br>
El tercer y último KPI es el aumentar el average(promedio) de accesos a fibra óptica en los lugares que se cumpla:
- Tener población mayor a 0 (no ser un pueblo fantasma).
- Tener total de accesos menor a 40 (aplicado en las provincias)
Esto para generar una expansión a los territorios con menos acceso, dando posibilidad de contratación de mejor velocidades y una experiencia más rápida y satisfactoria, que trae su comodidad en la vida de hoy en día y pasa a ser una necesidad (no primaria) ya que se utiliza desde forma de distracción, como forma de educación y trabajo. Sin mencionar los lugares pequeños a los que no les llega casi internet.