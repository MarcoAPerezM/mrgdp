library(usethis)
library(devtools, roxygen2)
use_package("REAT") # importar librerias ajenas
use_r("economic_census") # crear el archivo .R de las funciones personalizadas
# una vez que se creó el archivo .R de las funciones y la función está en él,
# se crea el esqueleto Roxygen en la pestaña code
devtools::document() # Actualizar la info de las funciones
