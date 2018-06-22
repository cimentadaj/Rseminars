## For this seminar there is no Powerpoint presentation. We decided to teach R within R. Instead,
## we've programmed the lessons and exercises to appear interactively in R.
## Open your R console, preferably Rstudio, and run the code below.
## You shall get instructions on how to start the session as soon as everything is installed.


## install.packages("downloader") if you don't have it installed.
library(downloader)

download_link <- "https://raw.githubusercontent.com/cimentadaj/Rseminars/master/Lesson_1/Course_download.R"
source_url(download_link, paste(sha_url(download_link)))

install_everything()
