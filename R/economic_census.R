#' Download Economic Census Data Tables from INEGI
#'
#' This function download a file as a dataframe. It's a table from economic census data
#' from INEGI page
#'
#' @param year  Year of selection
#' @param state Federal entitie of selection
#'
#' @return A data frame of complete Mexican economic census
#' @export
#' @examples
#'  economic_census(year=2019, state="ags")
#' @author Marco Antonio Pérez-Méndez
#'
economic_census <- function(year = NA, state = NA){

  #Generales
  censo.nueva.base = "https://www.inegi.org.mx/contenidos/programas/ce/2019/Datosabiertos/ce"
  # paso1 obtener la URL
  url.base = paste0(censo.nueva.base, year, "_",state, "_csv")
  zipdir = tempfile()
  temp.censo = base::tempfile()

  # paso 2  descargar archivos
  # loops para los años
  if(year == 2019 | year ==2014 | year == 2009| year == 2004){}else {}

  ### tabla x
  if( state == "ags" |
      state == "bc" |
      state == "bcs" |
      state == "camp" |
      state == "coah" |
      state == "col" |
      state == "chis" |
      state == "chih" |
      state == "cdmx" |
      state == "dgo" |
      state == "gto" |
      state == "gro" |
      state == "hgo" |
      state == "jal" |
      state == "mex" |
      state == "mich" |
      state == "mor" |
      state == "nay" |
      state == "nl" |
      state == "pue" |
      state == "qro" |
      state == "qroo" |
      state == "slp" |
      state == "sin" |
      state == "son" |
      state == "tab" |
      state == "tamps" |
      state == "tlax" |
      state == "ver" |
      state == "yuc" |
      state == "zac" |
      state == "oax"){

    url.tabla = paste0(url.base,".zip")
    utils::download.file(url.tabla, temp.censo)

    # descomprima y abra
    utils::unzip(temp.censo, exdir=zipdir)
    data.censo.N2 = readr::read_csv(paste0(zipdir,"/conjunto_de_datos/ce",year,"_",state,".csv"))
    names(data.censo.N2) = tolower(names(data.censo.N2))
    data.censo = data.censo.N2
    rm(data.censo.N2)

  }

  ####
  if (exists("data.censo")) { return(data.censo) } else {
    stop(message("\n La opción tecleada en los parametros es incorrecta")) }
}
