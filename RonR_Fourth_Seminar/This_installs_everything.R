<center> <h1> ![](https://lh3.googleusercontent.com/-UkfJ6Cj7fNc/AAAAAAAAAAI/AAAAAAAAAIE/RJmK4VaMytw/s100-c-k-no/photo.jpg)</h1> </center>
<center> <h1> RonR! seminars</h1> </center>

## Installation
For this seminar there is no Powerpoint presentation. We decided to teach R within R. Instead,
we've programmed the lessons and exercises to appear interactively in R.
Open your R console, preferably Rstudio, and run the code below.
You shall get instructions on how to start the session as soon as everything is installed.
```install.packages("downloader")``` if you don't have it installed.
```{r eval=F}
library(downloader)

source_url("https://raw.githubusercontent.com/cimentadaj/Rseminars/master/RonR_Fourth_Seminar/Download_course.R",
sha = paste0(sha_url("https://raw.githubusercontent.com/cimentadaj/Rseminars/master/RonR_Fourth_Seminar/Download_course.R")))
```

If you're using Windows replace the ```curl``` with ```libcurl```. If you're using Mac OS leave it as it is.
```{r eval=F}
install_everything("curl")
```
