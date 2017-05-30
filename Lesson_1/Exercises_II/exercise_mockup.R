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

# Awesome! 

# Can you tell me the name of the best student? Hint: The best student is
# the one that has the highest score with adding the math and science tests. Add both
# columns together and create a new one called joint_score. Using functions like
# max and which.max, tell me the name of the best student?

all_tests$joint_score <- with(all_tests, math_score + science_score)

with(all_tests, all_tests[which.max(joint_score), ])

# Awesome!

# Using the ?order function, order the data sets according to the joint_score
# data frame. Then, using the `:` and nrow() create a 'id_best' column containing
# an id based on the performance.

all_tests <- with(all_tests, all_tests[order(joint_score), ])
all_tests$id_best <- 1:nrow(all_tests)

## Subset the top 50, what is the frequence of passing math and failing science?
table(with(all_tests, all_tests[id_best <= 50, "passmath_failscience"]))

## Repeat the same thing for the bottom 50
table(with(all_tests, all_tests[id_best > 50, "passmath_failscience"]))

# When creating 'id_best', you could've used the seq() function, instead of ':'. Recreate
# the variable using the seq() function. Remember to ?seq() if you get lost.

all_tests$id_best <- seq(1: nrow(all_tests))

# Results are coming in! It looks like all students just took their literacy test
# and we have it at our disposal right now. However, because it was on a such a short notice,
# we couldn't get it on a data frame. We have a 'named vector'. Type literacy_scores.

literacy_scores

# Great so the id is set as the name and the score as the contents. You can access the names
# using the names() function. Now, create a data frame which has two columns: id and literacy_scores
# Populate the id column with the names of literacy_scores and the other column with the scores.
# Call that data frame literacy_tests. 

literacy_tests <- data.frame(id = names(literacy_scores), literacy_scores = literacy_scores)

# Can you compare how many rows does literacy_tests and all_tests have? Hint: number of rows..nrow?

nrow(literacy_tests)
nrow(all_tests)

# They both have the same number of rows. If we sorted both data frames on id we could simply
# column bind both data frames. Alright, let's order first all_tests and then literacy tests using
# the id column on both.

all_tests <- with(all_tests, all_tests[order(id), ])

# Alright, that one's set. Repeat it for literacy.

literacy_tests <- with(literacy_tests, literacy_tests[order(id), ])

# Check literacy_tests with the head() function.

head(literacy_tests)

# Ooops, what?? c(1, 10, 100)? That's not ordered.. tell me the class of id? Hint: class()

class(literacy_tests$id)

# Ah! a factor. You know why? Think about it.. where does the id column come from?
# It comes from the names of the literacy_scores vector. Names can't be numbers, right?
# So R turns the numbers into factors because they were suppose to be names, but we can change
# that very easily. We could create the id variable again and just use as.numeric, but we
# can do it on the fly while ordering. Repeat the previous ordering of literacy and
# wrap id in as.numeric()

literacy_tests <- with(literacy_tests, literacy_tests[order(as.numeric(id)), ])

# Oopsss, didn't work either! I forgot to tell you! Factors are a bit of a pain. In order
# to turn them into numbers you have to coerce them to characters and then to numerics.
# Do it yourself!

literacy_tests <- with(literacy_tests, literacy_tests[order(as.numeric(as.character(id))), ])

# Done!

# Now use the ?cbind() function to join them! Look at the help page if you get lost.
head(cbind(all_tests, literacy_tests))

# Awesome! But we have have redundantly added a new id column to the data sets -_-. We could've
# just used merge! now merge them together.

all_tests <- merge(all_tests, literacy_tests)

# Awesome, now you can look at the differences with a plot. Try:
barplot(all_tests$joint_score, names.arg = all_tests$name, las = 2)

# And

with(all_tests, plot(math_score, literacy_scores))
with(all_tests, abline(coef(line(math_score, literacy_scores)), col = "blue"))
