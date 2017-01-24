# Code placed in this file fill be executed every time the
# lesson is started. Any variables created here will show up in
# the user's working directory and thus be accessible to them
# throughout the lesson.

income <- c(100, 500, 35, 60, 2100)
diabetes <- c("Type1","Type2","Type1","Type1")
status <- c("Poor","Improved","Excellent")
status2 <- factor(status, order = TRUE, levels=c("Poor", "Improved", "Excellent"))
