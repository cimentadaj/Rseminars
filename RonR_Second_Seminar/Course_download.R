## This code installs the second seminar course in your working directory.


library(downloader)
library(swirl)
## Download the file
download("https://github.com/cimentadaj/Rseminars/archive/master.zip",
              "Rseminars-master.zip", mode="wb")

## unzip and install
install_course_zip(paste0(getwd(),"/Rseminars-master.zip"),
                   multi=T, which_course = "RonR_Second_Seminar")

## Now you can see the course if you type swirl()
message("Type swirl() to access the course")
