## Run this code and you should get all the lessons of the third RonR! seminar installed.
if ("downloader" %in% installed.packages() == F) {
    install.packages("downloader")
}

library(downloader)

source_url("https://raw.githubusercontent.com/cimentadaj/Rseminars/master/RonR_Third_Seminar/Installation.R",
paste(sha_url("https://raw.githubusercontent.com/cimentadaj/Rseminars/master/RonR_Third_Seminar/Installation.R")))
