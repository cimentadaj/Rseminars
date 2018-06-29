# Code placed in this file fill be executed every time the
# lesson is started. Any variables created here will show up in
# the user's working directory and thus be accessible to them
# throughout the lesson.

packages <- c("haven", "readxl")
pkgs_to_install <- setdiff(packages, row.names(installed.packages()))
if (length(pkgs_to_install) != 0) install.packages(pkgs_to_install)

library(haven)
library(readxl)

.get_course_path <- function(){
  tryCatch(swirl::swirl_courses_dir(),
           error = function(c) {
             file.path(find.package("swirl"), "Courses", "Lesson_2", "Reading_data")
    }
  )
}

my_wd <- .get_course_path()

url_list <- list(
  stata = "http://www.stata-press.com/data/r8/auto.dta",
  spss = "https://cehd.gmu.edu/assets/dimitrovbook/Anxiety%202.sav",
  sas = "http://www.principlesofeconometrics.com/sas/airline.sas7bdat"
)
