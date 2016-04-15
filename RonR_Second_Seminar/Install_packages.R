## download all packages

packages <- c("downloader", "swirl")

if (length(setdiff(packages, installed.packages())) > 0) {
    install.packages(setdiff(packages, installed.packages()))
}
