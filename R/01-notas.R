library("sessioninfo")
library("here")
library("ggplot2")

## path "C:/Users/caztl/notasBioinfoMod1"
#

## Crea proyecto

## usethis::create_project("~/notasBioinfoMod1")

## Crea archivo startup

## usethis::use_r("01-notas.R")



## Hello world
print("Soy Angel")

## Crea directorio para figuras
dir.create(here::here("figuras"), showWarnings = FALSE)

pdf(here::here("figuras", "mtcars_gear_vs_mpg.pdf"), useDingbats = FALSE)
ggplot(mtcars, aes(x = gear, y = mpg)) + geom_boxplot()
dev.off()

## Para reproducir mi código
options(width = 120)
sessioninfo::session_info()

## Para conectar con github

usethis::create_github_token()

## Para pegar token generado en github
## Se debe pegar el token generado en github, no la contraseña

gitcreds::gitcreds_set()

## Configurar usuario de github

usethis::edit_git_config()

## Inicializar repositorio de git

usethis::use_git()

## Para conectar repositorio local de git con los servidores de GitHub

usethis::use_github()

