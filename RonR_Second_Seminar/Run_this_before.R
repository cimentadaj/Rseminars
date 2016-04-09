## This code installs the second seminar course in this folder.

## Download the file
download.file("https://github.com/cimentadaj/Rseminars/archive/master.zip",
              "Rseminars-master.zip", method = "libcurl")

## unzip and install
install_course_zip(paste0(getwd(),"/Rseminars-master.zip"),
                   multi=T, which_course = "RonR_Second_Seminar")

install.packages("swirl")
library(swirl)

## Now you can see the course if you type swirl()
message("Type swirl() to access the course")
