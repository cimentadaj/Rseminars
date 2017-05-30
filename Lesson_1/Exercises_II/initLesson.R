# Code placed in this file fill be executed every time the
      # lesson is started. Any variables created here will show up in
      # the user's working directory and thus be accessible to them
      # throughout the lesson.

url <- "http://deron.meranda.us/data/census-derived-all-first.txt"
firstnames <- read.table(url(url), header=FALSE)
names <- sample(tolower(firstnames$V1), 100)

rnorm_limits <- function(lower, upper, n, mean, sd) {
  samp <- rnorm(n, mean, sd)
  
  if (!(any(samp > upper) || any(samp < lower))) {
    return(samp)
  } else {
    rnorm_limits(lower, upper, n, mean, sd)
  }
}

math_tests <- data.frame(id = seq_along(names),
                         name = names,
                         math_score = rnorm_limits(55, 100, 100, 70, 9))

science_tests <- data.frame(id = seq_along(names),
                            name = names,
                            science_score = rnorm_limits(55, 100, 100, 70, 9))

literacy_scores <- setNames(rnorm_limits(55, 100, 100, 80, 5), sample(100, 100, replace = F))