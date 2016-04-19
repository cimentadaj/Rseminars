## For this seminar there is no Powerpoint presentation. We decided to teach R within R. Instead,
## we've programmed the lessons and exercises to appear interactively in R.
## Open your R console, preferably Rstudio, and run the code below.
## You shall get instructions on how to start the session as soon as everything is installed.


## install.packages("downloader") if you don't have it installed.
library(downloader)

source_url("https://raw.githubusercontent.com/cimentadaj/Rseminars/master/RonR_Second_Seminar/Course_download.R",
           paste(sha_url("https://raw.githubusercontent.com/cimentadaj/Rseminars/master/RonR_Second_Seminar/Course_download.R")))

# If you're using windows replace the curl with "libcurl". If you're using Mac OS leave the curl as it is.
install_everything("libcurl")
