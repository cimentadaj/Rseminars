

if ("downloader" %in% installed.packages()) == F {
           install.packages("downloader")
}

library(downloader)

source_url("https://raw.githubusercontent.com/cimentadaj/Rseminars/master/RonR_Third_Seminar/Installation.R",
           paste(sha_url("https://raw.githubusercontent.com/cimentadaj/Rseminars/master/RonR_Third_Seminar/Installation.R")))

# If you're using windows replace the curl with "libcurl". If you're using Mac OS leave the curl as it is.
install_everything("libcurl")
