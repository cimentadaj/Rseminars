install.packages("downloader") ## if you don't have it installed.
library(downloader)

source_url("https://raw.githubusercontent.com/cimentadaj/Rseminars/master/RonR_Second_Seminar/Course_download.R",
           paste(sha_url("https://raw.githubusercontent.com/cimentadaj/Rseminars/master/RonR_Second_Seminar/Course_download.R")))

# If you're using windows replace the curl with "libcurl". If you're using Mac OS leave the curl as it is.
install_everything("libcurl")
