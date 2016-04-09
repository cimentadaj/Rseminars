## In order for the to install this course and lessons run this code in your computer

download.file("https://github.com/cimentadaj/Rseminars/archive/master.zip",
              "Rseminars-master.zip", method = "libcurl")

install_course_zip(paste0(getwd(),"/Rseminars-master.zip"),
                   multi=T, which_course = "RonR_Second_Seminar")

install.packages("swirl")
library(swirl)
