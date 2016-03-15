packages <- c("googleVis","dplyr","ggvis","openintro","plotly","maps","RColorBrewer","mapproj","stargazer","swirl")

for (i in 1:length(packages)) {
    install.packages(packages[i])
    require(packages[i], character.only = T)
print(paste(packages[i],"done"))
}

install_from_swirl("Getting and Cleaning Data")
