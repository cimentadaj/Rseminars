## This code installs the second seminar course in your working directory.

## download all packages

packages <- c("downloader", "swirl")

if (length(setdiff(packages, installed.packages())) > 0) {
    install.packages(setdiff(packages, installed.packages()))
}

library(downloader)
library(swirl)
## Download the file
download("https://github.com/cimentadaj/Rseminars/archive/master.zip",
              "Rseminars-master.zip", mode="curl")

## unzip and install
install_course_zip(paste0(getwd(),"/Rseminars-master.zip"),
                   multi=T, which_course = "RonR_Second_Seminar")

## Now you can see the course if you type swirl()
message("Type swirl() to access the course")
