## This function installs the swirl course.

install_everything <- function() {
  packages <- "swirl"
  packages_to_install <- setdiff(packages, installed.packages())
  
  if (length(packages_to_install) > 0) install.packages(packages_to_install)
  suppressWarnings(suppressPackageStartupMessages(require(swirl)))
  
  suppressWarnings(install_course_github("cimentadaj", "Rseminars", multi = T))
  
  ## Now you can see the course if you type swirl()
  message("Type swirl() to access the course")
}
