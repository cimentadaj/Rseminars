## This function installs the swirl course. It only has one argument for the method of the download.file call.
## According to different operating systems the method might change.

install_everything <- function(method) {

packages <- c("downloader", "swirl")

if (length(setdiff(packages, installed.packages())) > 0) {
    install.packages(setdiff(packages, installed.packages()))
}

library(downloader)
library(swirl)
## Download the file
download.file("https://github.com/cimentadaj/Rseminars/archive/master.zip",
              paste0(getwd(),"/Rseminars-master.zip"), method=method)

## unzip and install
install_course_zip(paste0(getwd(),"/Rseminars-master.zip"),
                   multi=T, which_course = "RonR_Fourth_Seminar")

## Now you can see the course if you type swirl()
message("Type swirl() to access the course")

}
