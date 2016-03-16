<!-- Pnorm1.rnw -->
<!-- url1 <- "https://gist.github.com/vasishth/ec4dd4afca10f6e8661f/archive/c91684924005bed3d250f7d4c41482d55aa229ac.zip"
destfile1 <- paste0(getwd(),"/","c91684924005bed3d250f7d4c41482d55aa229ac.zip")
download.file(url1, destfile1)
unzip(destfile1, exdir = getwd())

file.rename(paste0(getwd(),"/","ec4dd4afca10f6e8661f-c91684924005bed3d250f7d4c41482d55aa229ac","/","pnorm1.Rnw")
, paste0(getwd(),"/","pnorm1.Rnw"))

url2 <- "https://gist.github.com/vasishth/8b082454bc079ed5b47b/archive/039f0831a8ba461b13427d11b3ab488997cb450e.zip"
destfile2 <- paste0(getwd(),"/","039f0831a8ba461b13427d11b3ab488997cb450e.zip")
download.file(url2,destfile2)
unzip(destfile2, exdir = getwd())

file.rename(paste0(getwd(),"/","8b082454bc079ed5b47b-039f0831a8ba461b13427d11b3ab488997cb450e","/","sesamplesize1multiplechoice.Rnw")
, paste0(getwd(),"/","sesamplesize1multiplechoice.Rnw"))

url3 <- "https://gist.github.com/vasishth/cba616388c4bc62263f0/archive/a6b01a1f691e84498541026caacf44592228de20.zip"
destfile3 <- paste0(getwd(),"/","a6b01a1f691e84498541026caacf44592228de20.zip")
download.file(url3,destfile3)
unzip(destfile3, exdir = getwd())

file.rename(paste0(getwd(),"/","cba616388c4bc62263f0-a6b01a1f691e84498541026caacf44592228de20","/","solutiontest.tex")
, paste0(getwd(),"/","solutiontest.tex"))

url4 <- "https://gist.github.com/vasishth/226e170ed856f51b9990/archive/a5be9b6c51b311c5ef1c1e4ad2a53b613c52996b.zip"
destfile4 <- paste0(getwd(),"/","a5be9b6c51b311c5ef1c1e4ad2a53b613c52996b.zip")
download.file(url4, destfile4)
unzip(destfile4, exdir = getwd())

file.rename(paste0(getwd(),"/","226e170ed856f51b9990-a5be9b6c51b311c5ef1c1e4ad2a53b613c52996b","/","test.tex")
, paste0(getwd(),"/","test.tex"))

url5 <- "https://gist.githubusercontent.com/vasishth/3b767e39dba9fc2df65b/raw/d5a2f068912e152fbdbeba0a2c377d377750f1f2/ExampleExamCode.R"
destfile5 <- paste0(getwd(),"/","ExampleExamCode.R")
download.file(url5, destfile5)

## Ignore everything above from this line
----------------------------------------------------------------------------------------------------------------------------


========================================================
# RonR! First seminar  
# Introduction to R and its strengths  
Jorge Cimentada  
5th of March of 2016  

![] (http://brunalab.org/wp-content/uploads/2015/04/R_logo.svg_.png)

What is R?
========================================================

- R is a language and environment for statistical computing and graphics  

- An effective data handling and storage facility;
- A large, coherent, integrated collection of intermediate tools for data analysis;
- Graphical facilities for data analysis and display either on-screen or on hardcopy;
- Simple and effective programming language which includes conditionals, loops, user-defined recursive functions and input and output facilities.

Do you know what General Public License or GNU is?
========================================================

* You have the freedom to run the program as you wish, for any purpose (freedom 0).

* You have the freedom to study how the program works, and change it so it does your computing as you wish (freedom 1).

* You have the freedom to redistribute copies so you can help your neighbor (freedom 2).

* You have the freedom to distribute copies of your modified versions to others (freedom 3).


How does R work?
========================================================

- [R  foundation](https://www.r-project.org/foundation/)

- [R Mailing Lists]((https://www.r-project.org/mail.html)

- [Packages](https://cran.r-project.org/)

Getting started
========================================================
- Go to www.r-project.org
- Downloads: CRAN
- Set your Mirror: Anywhere in Spain is fine.
- Select 'Download R for Windows'.
- Select base.
- Select R 3.2.3 for Windows
    + The others are if you are a developer and wish to change
the source code.

Let's go to R!
========================================================
![R interface] (http://freestatisticalsoftware.com/wp-content/uploads/2012/06/R-Interface.jpg)

Downloading Rstudio
========================================================
 - [Rstudio for Windows](https://download1.rstudio.org/RStudio-0.99.892.exe)
 - [Rstudio for Macs](https://download1.rstudio.org/RStudio-0.99.892.dmg)
 - [Rstudio for Ubuntu/Linux](https://download1.rstudio.org/rstudio-0.99.892-i386.deb)
 
 ![] (http://muon-stat.com/Vortrag_Shiny/assets/img/rstudiologo.png)
 
 How does Rstudio look?
========================================================

 ![R studio interface] (https://www.rstudio.com/wp-content/uploads/2014/04/rstudio-windows.png)
 
 What are R's strengths?
========================================================
> Adapted from 'R for Stata users' by Muenchen and Hilbe
 
* Comprehensible repertoire of statistical techniques
* R is directly accessible from many statistics packages like SAS, SPSS and Stata.
* Every aspect of R is open for anyone to modify in any way they like. 
* **R also offers the very flexible and powerful Grammar of Graphics approach. Developers have even gone so far as replacing R’s core graphical system.**
* R is free. This helps to attract developers and is a major reason that there are so many add-on
packages for it.

R graphics
========================================================

```{r echo=T, fig.height = 6, fig.width = 15, tidy=T}
par(mfrow=c(1,2))
plot(iris$Sepal.Length, iris$Petal.Length,        
     col = iris$Species,                          
     main = "Sepal vs Petal Length in Iris")      
plot(iris$Sepal.Length, iris$Sepal.Width,         
     col = iris$Species,                          
     main = "Sepal Length vs Width in Iris")      
```

R graphics
========================================================

**__Problem = Explanatory graphs for teaching__**

```{r echo=F, fig.width=15}
xbar.therapy <- 92
s.therapy <- 8.5
xbar.placebo <- 85
s.placebo <- 9.1
n <- 15
xdiff <- xbar.therapy - xbar.placebo
sdiff <- sqrt((s.therapy^2 + s.placebo^2)/2) * sqrt(2/n)
sdiff <- sqrt(s.therapy^2 + s.placebo^2)/sqrt(n)

muH0 <- 0
muH1 <- 8

t0 <- (xdiff - muH0)/sdiff
par(cex.main = 1.5, mar = c(4, 4.5, 4.5, 1), mgp = c(3.5, 1, 0), cex.lab = 1.5, 
    font.lab = 2, cex.axis = 1.8, bty = "n", las = 1)
par(mar = c(4, 4.5, 4.5, 1))

# Bayes Factor (or, ugliest code ever and I DO NOT CARE TO FIX IT)
x <- seq(-15, 30, by = 0.001)
y <- dt(x/sdiff, df = 28)

y1 <- dt((x - 1)/sdiff, df = 28)
y2 <- dt((x - 2)/sdiff, df = 28)
y3 <- dt((x - 3)/sdiff, df = 28)
y4 <- dt((x - 4)/sdiff, df = 28)
y5 <- dt((x - 5)/sdiff, df = 28)
y6 <- dt((x - 6)/sdiff, df = 28)
y7 <- dt((x - 7)/sdiff, df = 28)
y8 <- dt((x - 8)/sdiff, df = 28)
y9 <- dt((x - 9)/sdiff, df = 28)
y10 <- dt((x - 10)/sdiff, df = 28)

plot(x, y, type = "l", axes = FALSE, xlab = NA, ylab = NA, xlim = c(-15, 25), 
    lwd = 2)

lines(x, y1, col = "grey70")
lines(x, y2, col = "grey70")
lines(x, y3, col = "grey70", lwd = 2)
lines(x, y4, col = "grey70")
lines(x, y5, col = "grey70", lwd = 2)
lines(x, y6, col = "grey70")
lines(x, y7, col = "grey70")
lines(x, y8, col = "grey70", lwd = 2)
lines(x, y9, col = "grey70")
lines(x, y10, col = "grey70", lwd = 2)

axis(side = 1, at = seq(-15, 30, by = 5), pos = 0, lwd = 2, cex.axis = 1.7)
axis(side = 1, at = 7, pos = 0, col = "red4", col.axis = "red4", lwd = 2, padj = 0.1)
abline(v = xdiff, col = "red4", lwd = 2)

L0 <- dt((xdiff/sdiff), df = 28)
L1 <- dt(((xdiff - 1)/sdiff), df = 28)
L2 <- dt(((xdiff - 2)/sdiff), df = 28)
L3 <- dt(((xdiff - 3)/sdiff), df = 28)
L4 <- dt(((xdiff - 4)/sdiff), df = 28)
L5 <- dt(((xdiff - 5)/sdiff), df = 28)
L6 <- dt(((xdiff - 6)/sdiff), df = 28)
L7 <- dt(((xdiff - 7)/sdiff), df = 28)
L8 <- dt(((xdiff - 8)/sdiff), df = 28)
L9 <- dt(((xdiff - 9)/sdiff), df = 28)
L10 <- dt(((xdiff - 10)/sdiff), df = 28)

lines(c(6.7, 7.3), y = rep(L0, 2), col = "red4", lwd = 2)
lines(c(6.7, 7.3), y = rep(L1, 2), col = "red4", lwd = 2)
lines(c(6.7, 7.3), y = rep(L2, 2), col = "red4", lwd = 2)
lines(c(6.7, 7.3), y = rep(L3, 2), col = "red4", lwd = 2)
lines(c(6.7, 7.3), y = rep(L4, 2), col = "red4", lwd = 2)
lines(c(6.7, 7.3), y = rep(L5, 2), col = "red4", lwd = 2)
lines(c(6.7, 7.3), y = rep(L6, 2), col = "red4", lwd = 2)
lines(c(6.7, 7.3), y = rep(L7, 2), col = "red4", lwd = 2)
lines(c(6.7, 7.3), y = rep(L8, 2), col = "red4", lwd = 2)
lines(c(6.7, 7.3), y = rep(L9, 2), col = "red4", lwd = 2)
lines(c(6.7, 7.3), y = rep(L10, 2), col = "red4", lwd = 2)

text(-16.8, 0.35, expression(paste(H[0], " : ", mu[diff], " = 0", sep = "")), 
    adj = 0, cex = 1.6)
text(-16.8, 0.3, expression(paste(H[1], " : 0", "" <= mu[diff], "" <= 10), sep = ""), 
    adj = 0, cex = 1.6)
text(15, 0.35, expression(paste(italic("L"), "(", H[0], ") = .04")), adj = 0, 
    col = "red4", cex = 1.6)
text(15, 0.3, expression(paste(italic("L"), "(", H[1], ") = .10")), adj = 0, 
    col = "red4", cex = 1.6)
text(14.2, 0.22, expression(paste("BF = ", frac(".10", ".04"), " = ", 2.5, sep = "")), 
    adj = 0, col = "red4", cex = 1.6)
mtext(expression(bar(x)[diff]), side = 1, line = 2, at = 6.5, adj = 0, col = "red4", 
    cex = 1.8, padj = 0.1)
```

R graphics
========================================================

**__Problem = Showing overlapping variation using Venn diagrams__*
```{r echo=F, fig.width=15}
op <- par(mar = c(4, 0, 0, 4))

x <- seq(-12, 12, 0.1)
x.ticks <- seq(-12, 12, 2)
y <- x
z <- matrix(0, ncol = length(x), nrow = length(y))
z[, 1] <- dnorm(x)
zcol <- matrix(0, ncol = length(x), nrow = length(y))
zcol[, 1] <- "black"

res <- persp(x, y, z, theta = 0, phi = 0, expand = 0.4, xlab = "", ylab = "", 
    ticktype = "detailed", cex.lab = 0.8, zlab = "", box = FALSE, border = FALSE, 
    xlim = c(-13, 13))
polygon(trans3d(c(x, rev(x)), y = rep(y[1], 2 * length(x)), z = c(dnorm(y, 3.8, 
    2), rep(0, length(x))), pmat = res), col = rgb(red = 190, green = 190, blue = 190, 
    alpha = 100, maxColorValue = 300), border = NA)
polygon(trans3d(c(x, rev(x)), y = rep(y[41], 2 * length(x)), z = c(dnorm(y, 6.8), 
    rep(0, length(x))), pmat = res), col = rgb(red = 190, green = 190, blue = 190, 
    alpha = 140, maxColorValue = 300), border = NA)
polygon(trans3d(c(x, rev(x)), y = rep(y[81], 2 * length(x)), z = c(dnorm(y, -1, 
    2.5), rep(0, length(x))), pmat = res), col = rgb(red = 190, green = 190, 
    blue = 190, alpha = 180, maxColorValue = 300), border = NA)
polygon(trans3d(c(x, rev(x)), y = rep(y[121], 2 * length(x)), z = c(dnorm(y, 
    -5), rep(0, length(x))), pmat = res), col = rgb(red = 190, green = 190, blue = 190, 
    alpha = 220, maxColorValue = 300), border = NA)
polygon(trans3d(c(x, rev(x)), y = rep(y[161], 2 * length(x)), z = c(dnorm(y, 
    2.5, 1.5), rep(0, length(x))), pmat = res), col = rgb(red = 190, green = 190, 
    blue = 190, alpha = 260, maxColorValue = 300), border = NA)
polygon(trans3d(c(x, rev(x)), y = rep(y[201], 2 * length(x)), z = c(dnorm(y, 
    -9, 0.8), rep(0, length(x))), pmat = res), col = rgb(red = 190, green = 190, 
    blue = 190, alpha = 300, maxColorValue = 300), border = NA)

### draw x-axis
lines(trans3d(x[which(x == -8):which(x == 10)], min(y) - 2, min(z), res), col = "black", 
    lwd = 1.4)

# tick marks
tick.start <- trans3d(seq(-8, 10, 2), min(y) - 2, min(z), res)
tick.end <- trans3d(seq(-8, 10, 2), min(y) - 2, min(z - 0.01), res)
segments(tick.start$x, tick.start$y, tick.end$x, tick.end$y, lwd = 2.6)

# labels
labels <- seq(-8, -2, 2)
label.pos <- trans3d(seq(-8, -2, 2), min(y) - 2, min(z - 0.035), res)
text(label.pos$x, label.pos$y, labels = labels, cex = 1.6, adj = 0.65)
labels <- seq(0, 10, 2)
label.pos <- trans3d(seq(0, 10, 2), min(y) - 2, min(z - 0.035), res)
text(label.pos$x, label.pos$y, labels = labels, cex = 1.6, adj = 0.5)

### add labels to distributions
text(trans3d(3.8, y[1], dnorm(3.8, 3.8, 2) + 0.02, res), "a", cex = 1.7)
text(trans3d(6.8, y[41], dnorm(6.8, 6.8) + 0.024, res), "b", cex = 1.7)
text(trans3d(-1, y[81], dnorm(-1, -1, 2.5) + 0.027, res), "c", cex = 1.7)
text(trans3d(-5, y[121], dnorm(-5, -5) + 0.029, res), "d", cex = 1.7)
text(trans3d(2.5, y[161], dnorm(2.5, 2.5, 1.5) + 0.033, res), "e", cex = 1.7)
text(trans3d(-9, y[201], dnorm(-9, -9, 0.8) + 0.039, res), "f", cex = 1.7)

par(op)
```


R graphics
========================================================

**__Problem = Showing relationships between data points__**
![R facebook map] (http://paulbutler.org/archives/visualizing-facebook-friends/facebook_map.png)
  **This is among the most recognized graphs in R!**
  


R graphics - ggplot2 package
========================================================
**__Problem = Nicely formatted barplot with minimum code__**
```{r, echo=T, fig.width=10, fig.height=7}
library(ggplot2)
ggplot(diamonds, aes(clarity, fill=cut)) + geom_bar()
```

R graphics - ggplot2 package
========================================================

**__Problem = Visualizing a bivariate relationship filtered by two variables__**
```{r, echo=T, fig.width=10, fig.height=7, fig.width=15}
library(ggplot2)
qplot(wt, mpg, data=mtcars, size=qsec, color=factor(carb))
```

R graphics - ggplot2 package
========================================================
**__Problem = Visualizing a bivariate relationship by a categorical variable__**
```{r, echo=T, fig.height=7, fig.width=15, tidy=T}
library(ggplot2)
qplot(mpg, wt, data=mtcars, facets=cyl~., geom=c("point", "smooth")) + coord_flip()
```

R graphics - ggplot2 package
========================================================
**__Problem = Combine existing graphs in a nice format  __*
**Note: There's some other code going on in the back! Not that easy.**
```{r, echo=F}
library(ggplot2)

multiplot <- function(..., plotlist=NULL, file, cols=1, layout=NULL) {
  library(grid)

  # Make a list from the ... arguments and plotlist
  plots <- c(list(...), plotlist)

  numPlots = length(plots)

  # If layout is NULL, then use 'cols' to determine layout
  if (is.null(layout)) {
    # Make the panel
    # ncol: Number of columns of plots
    # nrow: Number of rows needed, calculated from # of cols
    layout <- matrix(seq(1, cols * ceiling(numPlots/cols)),
                    ncol = cols, nrow = ceiling(numPlots/cols))
  }

 if (numPlots==1) {
    print(plots[[1]])

  } else {
    # Set up the page
    grid.newpage()
    pushViewport(viewport(layout = grid.layout(nrow(layout), ncol(layout))))

    # Make each plot, in the correct location
    for (i in 1:numPlots) {
      # Get the i,j matrix positions of the regions that contain this subplot
      matchidx <- as.data.frame(which(layout == i, arr.ind = TRUE))

      print(plots[[i]], vp = viewport(layout.pos.row = matchidx$row,
                                      layout.pos.col = matchidx$col))
    }
  }
}

# This example uses the ChickWeight dataset, which comes with ggplot2
# First plot
p1 <- ggplot(ChickWeight, aes(x=Time, y=weight, colour=Diet, group=Chick)) +
    geom_line() +
    ggtitle("Growth curve for individual chicks")

# Second plot
p2 <- ggplot(ChickWeight, aes(x=Time, y=weight, colour=Diet)) +
    geom_point(alpha=.3) +
    geom_smooth(alpha=.2, size=1) +
    ggtitle("Fitted growth curve per diet")

# Third plot
p3 <- ggplot(subset(ChickWeight, Time==21), aes(x=weight, colour=Diet)) +
    geom_density() +
    ggtitle("Final weight, by diet")

# Fourth plot
p4 <- ggplot(subset(ChickWeight, Time==21), aes(x=weight, fill=Diet)) +
    geom_histogram(colour="black", binwidth=50) +
    facet_grid(Diet ~ .) +
    ggtitle("Final weight, by diet") +
    theme(legend.position="none")        # No legend (redundant in this graph) 
```

```{r echo=T ,fig.width=15, tidy=T}
multiplot(p1, p2, p3, p4, cols=2)
```


Multilevel PSM
========================================================
**__Problem = Visualizing complex statistical techniques_**
![] (http://jason.bryer.org/images/multilevelPSA/pisaAssessmentPlot.png)
http://jason.bryer.org/multilevelPSA/

Psychology Reproducibility
========================================================
**__Problem = Plotting distributions next to scatterplots_**
![] (https://whyevolutionistrue.files.wordpress.com/2015/09/f1-large.jpg?w=698&h=554)

Country performance in PISA
========================================================
**__Problem = Making nice graphical summaries__**
![] (http://user2014.stat.ucla.edu/images/DianneCookLukeFostvedtIanLyttleAlexShum.png)

Likert package
========================================================
**__Problem = Visualize Likert type questions quickly__**
![likert] (http://jason.bryer.org/images/likert/centeredPlot2.png)


Interactive graphs
========================================================
**__Problem = Exploring your data visually in a fast way __** 
** Run this in your R console **  
```{r echo=T, eval=F}
library(openintro)
edaPlot(mtcars)
```

Interactive graphs
========================================================
**__Problem = Getting QUALITY visualizations with almost no work.__**
- Let's go to the console to get to know ggvis

Advantages of ggvis over other graph packages:  
- HTML and Javascript graphics are the ones actually doing the work behind ggvis.

For more info, go to [ggvis](http://ggvis.rstudio.com/interactivity.html)

Interactive graphs
========================================================
**__Problem = Getting QUALITY visualizations exportable to websites.  __**
** Run this on your R console **

```{r echo=T,eval=F}
library(plotly)
set.seed(100)
d <- diamonds[sample(nrow(diamonds), 1000), ]
plot_ly(d, x = carat, y = price, text = paste("Clarity: ", clarity),
        mode = "markers", color = carat, size = carat)
```

For more see [plotly](https://plot.ly/r/)

Interactive graphs
========================================================

- Shiny has also interactive graphs which can be included in [websites](http://shiny.rstudio.com/gallery/)
- [Simpler example](http://shiny.rstudio.com/gallery/kmeans-example.html)


Interactive graphs
========================================================
Let's play around!  
```{r echo=T, eval=F}
span <- waggle(0.2,1)
span <- left_right(0.2,1,step = 0.1)

mtcars %>%
    ggvis(~mpg, ~disp) %>%
    layer_lines() %>%
    layer_smooths(span=span)
```
The first 'span' variable will adjust the smoothness automatically
You can adjust the smoothness with your left-right arrow with the second span

R graphics
========================================================

- [rCharts](http://rcharts.io/)
```{r results = 'asis', echo=F}
library(googleVis)
M <- gvisMotionChart(Fruits, "Fruit", "Year", options=list(width=800, height=410))
print(M, tag='chart')
```


R maps
========================================================


```{r echo=F, fig.width=15}
library(maps)
library(ggplot2)
library(RColorBrewer)
library(mapproj)

new_theme_empty <- theme_bw()  # Create our own, mostly blank, theme
new_theme_empty$line <- element_blank()
new_theme_empty$rect <- element_blank()
new_theme_empty$strip.text <- element_blank()
new_theme_empty$axis.text <- element_blank()
new_theme_empty$axis.title <- element_blank()
new_theme_empty$plot.margin <- structure(c(0, 0, -1, -1), unit = "lines", valid.unit = 3L, class = "unit")

stateShapes <- map("state", plot = FALSE, fill = TRUE)
stateShapes <- fortify(stateShapes)  # Load state shapefiles and convert to a data.frame

uniqueStates <- sort(unique(stateShapes$region))
stateResults <- runif(length(uniqueStates), 0, 100)
names(stateResults) <- uniqueStates  # Romney vote / Obama vote:
stateResults["alabama"] <- 60.7/38.4; stateResults["arizona"] <- 55/43.4; stateResults["arkansas"] <- 60.4/37.0
stateResults["california"] <- 38.5/59.2; stateResults["colorado"] <- 47/50.7; stateResults["connecticut"] <- 40.6/58.3
stateResults["delaware"] <- 40/58.6; stateResults["district of columbia"] <- NA; stateResults["florida"] <- 49.3/49.8  # 7.1/91.4
stateResults["georgia"] <- 53.4/45.4; stateResults["idaho"] <- 65.8/31.5; stateResults["illinois"] <- 41.1/57.3
stateResults["indiana"] <- 54.3/43.8; stateResults["iowa"] <- 46.5/52.1; stateResults["kansas"] <- 59.9/37.9
stateResults["kentucky"] <- 60.5/37.8; stateResults["louisiana"] <- 58.5/39.8; stateResults["maine"] <- 40.3/56.3
stateResults["maryland"] <- 37/61.2; stateResults["massachusetts"] <- 37.5/60.9; stateResults["michigan"] <- 45.5/53.6
stateResults["minnesota"] <- 45.1/52.8; stateResults["mississippi"] <- 55.4/43.6; stateResults["missouri"] <- 53.9/44.3
stateResults["montana"] <- 56.6/41.5; stateResults["nebraska"] <- 60.5/37.8; stateResults["nevada"] <- 45.7/52.3
stateResults["new hampshire"] <- 46.7/52; stateResults["new jersey"] <- 51.0/57.9; stateResults["new mexico"] <- 43/52.9
stateResults["new york"] <- 35.9/62.7; stateResults["north carolina"] <- 50.6/48.4; stateResults["north dakota"] <- 58.7/38.9
stateResults["ohio"] <- 48.2/50.1; stateResults["oklahoma"] <- 66.8/33.2; stateResults["oregon"] <- 44.1/53.3
stateResults["pennsylvania"] <- 46.8/51.9; stateResults["rhode island"] <- 35.2/63.1; stateResults["south carolina"] <- 55/43.7
stateResults["south dakota"] <- 57.9/39.9; stateResults["tennessee"] <- 59.5/39; stateResults["texas"] <- 57.2/41.4
stateResults["utah"] <- 72.7/24.9; stateResults["vermont"] <- 31.2/67.1; stateResults["virginia"] <- 47.8/50.8
stateResults["washington"] <- 42.8/55.2; stateResults["west virginia"] <- 42.8/55.2; stateResults["wisconsin"] <- 62.3/35.5
stateResults["wyoming"] <- 69.3/28

stateResults <- 100 * stateResults / (stateResults + 1)  # Convert to proportion of the two-party vote

stateShapes$repVote <- by(stateResults, uniqueStates, mean)[stateShapes$region]  # Add results to shapefile frame

myPalette <- colorRampPalette(rev(brewer.pal(11, "RdYlBu")))  # Make a custom color palette
normalize <- function(x){  (x - min(x, na.rm = T)) / (max(x, na.rm = T) - min(x, na.rm = T))  }
myPalette <- colorRampPalette(myPalette(1000)[round(1000 * normalize(qbeta(1:999 /1000, 1/3, 1/3)))])
myPalette <- myPalette(1000)#[0:700]  # Not needed, if you leave out DC, which really skews the palette

mapPlot <- ggplot(stateShapes,
                  aes(x = long, y = lat, group = group,
                      fill = repVote))
mapPlot <- mapPlot + geom_polygon(colour = "BLACK")
mapPlot <- mapPlot + coord_map(project="conic", lat0 = 30)
mapPlot <- mapPlot + new_theme_empty
mapPlot <- mapPlot + scale_fill_gradientn("Romney Prop.\nof the 2PV",
                                          colours = myPalette)
mapPlot <- mapPlot + ggtitle("2012 Election Returns by State")
print(mapPlot)
```

R maps
========================================================
![] (http://i1.wp.com/dsparks.files.wordpress.com/2011/10/cces-2010-abortion-attitudes-black.png)

R maps
========================================================
**Crime density in Baltimore**
![] (http://i2.wp.com/www.obscureanalytics.com/wp-content/uploads/2012/12/AGG._ASSAULT.png)

R maps
========================================================
![] (http://i.stack.imgur.com/rArqc.jpg)

R maps
========================================================
![] (http://i1.wp.com/f.hypotheses.org/wp-content/blogs.dir/253/files/2015/02/Rplot-19.png?w=456)

Summary statistics ouput
========================================================
** Run this in the console **
```{r eval=F}
library(stargazer)
stargazer(mtcars[c("mpg","hp","drat")], type = "text",
 title="Descriptive statistics/selected variables", digits=1, out="table2.txt", flip=TRUE,
 covariate.labels=c("Miles/(US)gallon","Gross horsepower","Rear axle ratio"))
```

Regression statistics ouput
========================================================
** Run this in the console **
```{r echo=T, eval=F}
library(stargazer)
mtcars$fast <- as.numeric((mtcars$mpg > 20.1))

m1 <- lm(mpg ~ hp + drat + factor(gear), data=mtcars)
m2 <- glm(fast ~ hp + drat + am, family=binomial(link="logit"), data=mtcars)

stargazer(m1, m2,type="text", dep.var.labels=c("Miles/(US) gallon","Fast car (=1)"), covariate.labels=c("Gross horsepower","Rear axle ratio","Four foward gears","Five forward gears","Type of transmission (manual=1)"))
```


========================================================
  
Where did you think this presentation was done?

Checkout [Rmarkdown](https://rpubs.com/bcavness1/crrp2) and also [here](https://rpubs.com/carahubbell/toothgrowth)

But of course, it's not built to write research papers, it's more for:
- Blog posts;
- Posts to StackExchange sites;
- Materials for training workshops;
- Short consulting reports;
- Exploratory analyses as part of a larger project;

There's also [slidify](http://blmoore.bitbucket.org/edbio/#1)  
- You can also save it as pdf

Exercises for you students
========================================================
With the [swirl](http://swirlstats.com/) package you can program exercises and homeworks that students can do anywhere.

Try it out yourself:
```{r echo=T}
library("swirl")
swirl()
```
