
![](https://lh3.googleusercontent.com/-UkfJ6Cj7fNc/AAAAAAAAAAI/AAAAAAAAAIE/RJmK4VaMytw/s100-c-k-no/photo.jpg)
## RonR! seminars

### Introduction
As part of the RonR! seminars organized by the RECSM, we have developed a guide on how to install R, Rstudio and the interactive lessons that will get you up and running with R.

### Installing R:

Go to this [website](https://cran.r-project.org/) and click on Download R for your respective operating system.

**For Windows:** click on base and then on Download R 3.2.5 for Windows. It could be that by the time you're downloading this the version has changed, so do not worry about this. If you're running into some problems, browse this website as there is plenty of documentation that can help.

**For Mac:** click on the first file below the __**File**__ section. As of the 21 of April, 2016, this version is R-3.2.4.pkg.   

**For Ubuntu:** I would suggest to follow this [guide](https://www.digitalocean.com/community/tutorials/how-to-set-up-r-on-ubuntu-14-04)


### Installing Rstudio

RStudio is a powerful and productive user interface for R. It’s free and open source, and works great on Windows, Mac, and Linux.

**To install Rstudio** go to this [website](https://www.rstudio.com/products/rstudio/download/).

**For Windows:** click on the download for Windows Vista/7/8/10. 

**For Mac:** click on the download for Mac OS X 10.6+ (64-bit).

**For Ubuntu:** choose one of the two Ubuntu versions depending if you need the 32 or 64 bit.

> **After downloading both programs be sure to install R and then Rstudio. The installation process should be straightforward, simply follow the instructions when opening the installation. Note: Remember to save the access icon to your desktop after the Rstudio installation.**

### Installing swirl courses

Please open Rstudio. 

If your screen looks like this: ![](https://slobaexpert.files.wordpress.com/2014/02/image35.png)

Then you're in the right path.

***
To install the interactive lessons copy and paste this code in the bottom left window.

```{r, eval=FALSE}
install.packages("downloader")
library(downloader)

link <- "https://raw.githubusercontent.com/cimentadaj/Rseminars/master/RonR_Second_Seminar/Course_download.R"

source_url(link, paste(sha_url(link)))

### If you're using Mac replace the libcurl with "curl"
install_everything("libcurl")
```

If everything was correct, then the last two sentences in the console should be:
```{r eval=FALSE}
| Course installed successfully!

Type swirl() to access the course
```

Now type ```swirl() ``` and the interactive lesson should ask you for your name. After that, the interactive lesson will give you some instructions on how the program works and finally it should give the list of courses that you have installed. Enter the number of your desired course and choose whichever lesson you want to start.

Whenever you are inside a lesson you have the option to use any of these functions, so keep them in mind!
```
| -- Typing skip() allows you to skip the current question.
| -- Typing play() lets you experiment with R on your own; swirl will ignore what you do...
| -- UNTIL you type nxt() which will regain swirl's attention.
| -- Typing bye() causes swirl to exit. Your progress will be saved.
| -- Typing main() returns you to swirl's main menu.
| -- Typing info() displays these options again.

Additionally, If you want to abort swirl() press the key esc.
```

If you run into any issues throughout the process, feel free to email cimentadaj@gmail.com stating the specific problem.

Happy coding!  

### The organizers of the RECSM RonR! seminars.
