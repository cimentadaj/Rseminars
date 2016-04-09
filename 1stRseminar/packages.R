

packages <- c("googleVis","dplyr","ggvis","openintro","plotly","maps","RColorBrewer","mapproj","stargazer","swirl")

for (i in 1:length(packages)) {
    install.packages(packages[i])
    require(packages[i], character.only = T)
print(paste(packages[i],"done"))
}

library(swirl)
install_from_swirl("Getting and Cleaning Data")

message("Everything was installed correctly!")



packages <- c("googleVis","dplyr","ggvis","openintro","plotly","maps","RColorBrewer","mapproj","stargazer","swirl")

if(length(setdiff(packages,rownames(installed.packages()))) > 0) {
     install.packages(setdiff(packages,rownames(installed.packages())))
    for (i in 1:length(packages)) {
    require(packages[i],character.only = T)
    }
    install_from_swirl("Getting and Cleaning Data")
}

message("Everything was installed correctly!")
