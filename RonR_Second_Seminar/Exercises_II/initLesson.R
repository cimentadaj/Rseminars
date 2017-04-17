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

# These are 9nth graders. the first 50 of the class belong to the A group, whereas half the others
# belong to the B group. Create a variable called type_grade that repeats A 50 times and B, 50 times.

math_tests$type_grade <- rep(c("A", "B"), each = 50)

# Which type of grade has a better math score?

mean(with(math_tests, math_tests[type_grade == "A", "math_score"]))
mean(with(math_tests, math_tests[type_grade == "B", "math_score"]))

# Please add a logical column that specifies which students passed the test (scored above 70)
# and which didn't. Call that column 'passed'

math_tests$passed <- math_tests$math_score > 70

## Using the merge function (?merge), merge the math_tests and science_tests data sets. Identify
## which variables are key in both data sets (hint: there are two).
# Save the new data as all_tests

all_tests <- merge(math_tests, science_tests, by = c("id", "name"))

# Now we have a dataset containing math and science scores. We can do some cool calculations.
# Answer this question: Who passed math but didn't science?

# You can do that by writing a logical expression. For example, (use with())
all_tests$passmath_failscience <- with(all_tests, math_score > 70 & science_score < 70)

# save that column as passmath_failscience

# we can see the frequency with the table() function.

with(all_tests, table(passmath_failscience))