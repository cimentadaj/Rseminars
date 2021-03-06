
install_everything <- function(method) {

packages <- c("downloader", "swirl", "swirlify")

if (length(setdiff(packages, installed.packages())) > 0) {
    install.packages(setdiff(packages, installed.packages()))
}

library(downloader)
library(swirlify)

if (file.exists(paste0(getwd(),"/Third_R_Seminar")) == F) {
dir.create(paste0(getwd(), "/Third_R_Seminar"))
}
setwd(paste0(getwd(), "/Third_R_Seminar"))

## Download the file
download.file("https://github.com/cimentadaj/Rseminars/archive/master.zip",
              paste0(getwd(),"/Rseminars-master.zip"), method=method)

## unzip and install

files <- c("Rseminars-master/RonR_Third_Seminar/Dataset.zip")
unzip(paste0(getwd(), "/Rseminars-master.zip"), exdir=getwd(), files = files)

my.file.rename <- function(from, to) {
    todir <- dirname(to)
    if (!isTRUE(file.info(todir)$isdir)) dir.create(todir, recursive=TRUE)
    file.rename(from = from,  to = to)
}

my.file.rename(paste0(getwd(),"/Rseminars-master/RonR_Third_Seminar/Dataset.zip"), paste0(getwd(), "/Dataset.zip"))

unzip(paste0(getwd(),"/Dataset.zip"), exdir=getwd())

install_course_zip(paste0(getwd(),"/Rseminars-master.zip"), multi=T, which_course = "RonR_Third_Seminar")

message("Everything was installed correctly! Type swirl() to access the lessons.")

}
