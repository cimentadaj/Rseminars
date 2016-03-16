

packages <- c("googleVis","dplyr","ggvis","openintro","plotly","maps","RColorBrewer","mapproj","stargazer")

for (i in 1:length(packages)) {
    install.packages(packages[i])
    require(packages[i], character.only = T)
print(paste(packages[i],"done"))
}

library(swirl)
install_from_swirl("Getting and Cleaning Data")

message("Everything was installed correctly!")
