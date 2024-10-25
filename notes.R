library(usethis)
library(devtools, roxygen2)
use_package("REAT") # importar librerias ajenas
use_r("economic_census") # crear el archivo .R de las funciones personalizadas
# una vez que se creó el archivo .R de las funciones y la función está en él,
# se crea el esqueleto Roxygen en la pestaña code
devtools::document() # Actualizar la info de las funciones
help(package="mrgdp")
library(usethis)
usethis::use_release_issue()

usethis::use_news_md()

usethis::use_cran_comments()

#{bash} terminal
git pull

usethis::use_github_links()



urlchecker::url_check()

devtools::check(remote = TRUE, manual = TRUE)


devtools::check_win_devel()


#{bash}
git push



usethis::use_version('minor')


```{r}
devtools::submit_cran()
```

