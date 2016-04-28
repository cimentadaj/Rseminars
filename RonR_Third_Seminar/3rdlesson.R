## Load the gripstrength.txt dataset

Hello and welcome to the third lessons of the 3rd RonR! seminar. On this lesson
we will cover the basics of descriptive statistics, frequency tables and correlation.

This lesson is not about statistics nor it will explain what each command does. The purpose
is to show you that R has these standard functions available and that you can use them whenever
you want. In case you already know what the mean, then they will provide handy.

I took the liberty of downloading a text file to your working directory. Let's read it
with this command dati <- read.table("gripstrength.txt",header=TRUE, sep=",")

Correct answer: dati <- read.table("gripstrength.txt",header=TRUE, sep=",")
Hint: Type dati <- read.table("gripstrength.txt",header=TRUE, sep=",")

Do you remember how we can have a look at the 'head' of the dataset? Try it

Correct answer: head(dati)
Hint: Type head(dati)

Now let's have a look at the 'tail' of the dataset. Try it

Correct answer: tail(dati)
Hint: Type tail(dati)

It's always a good habit to inspect your dataset, specially when you're reading a csv, text
or other format file. Just to make sure that it was read without any problems.

R has some standard functions to calculate descriptive statistics. To name a few, mean is
mean(), the standard deviation is sd(), the variance is var() and the median is median().

Let's calculate the mean of the variable maxgrip. If I typed mean(dati), what 
would I get?

Answers: The mean of dati; The mean of maxgrip; An error;
Correct answer: An error

Alright, that was a trick question. Remember that dati is a data frame! It contains several columns
and many rows. How would you calculate the mean of a data frame? The correct expression
would be to calculate the mean of maxgrip using the $ operator from the dataframe dati. Try it
yourself.

Correct answer: mean(dati$maxgrip)
Hint: dati$maxgrip is the variable maxgrip, so simply type mean(dati$maxgrip)

Using the sd() function calculate the standard deviation of maxgrip

Correct answer: sd(dati$maxgrip)
Hint: Type sd(dati$maxgrip)

Do exactly the same with var() function to calculate the variance of maxgrip.

Suppose we want to compare the result of the mean() function with the median() function. Calculate
the median() of maxgrip.

Correct answer: median(dati$maxgrip)
Hint: Type median(dati$maxgrip)

What about quantiles? They're pretty easy to get with the quantile function. Without me explaining it,
try to use the quantile() function on our maxgrip variable.

Correct answer: quantile(dati$maxgrip)
Hint: Type quantile(dati$maxgrip)

That's nice! But what if we wanted a specific quantile? Then we specify it as a second argument
like here quantile(dati$maxgrip, 0.65). That would give us the value of the 65th quantile.

As for frequency tables, R has the table() function. It has as many arguments as you want to
specify. Let's imagine we want to see the number of people within a country. Type table(dati$country)

Correct answer: table(dati$country)
Hint: Type table(dati$country)

Let's look at the number of males and females within each country. Take the last table
add a comma and add the sex variable from the dati dataframe. This time
save the table to an object named ourtable using the <- operator.

Correct answer: ourtable <- table(dati$country, dati$sex)
Hint: Type ourtable <- table(dati$country, dati$sex). This will give you a two way table.

We can add as many other variables as you want by simply putting a comma and adding another
variable. You could create 3, 4, 5 way tables if you want.

However what many people are after when computing frequencies is not the number of people in
these tables but the proportion or percentage. We can use the prop.table() function, with our
table object and specify the margin argumen to 1 to get the percentages by row. Try it with this
expression prop.table(x=ourtable,margin=1)

Correct answer: prop.table(x=ourtable,margin=1)
Hint: Type prop.table(x=ourtable,margin=1)

You could get the column percentages by changing the 1 for a 2 in the margin argument.

You can also get the relative frequencies dividing the table by the total amount of observations.
A smart way of doing this would be to write ourtable / sum(ourtable). You can read it as
each number in our table divided by the sum of all the numbers of our table -- the total number
of observations.

A cool thing you can do with R is divide a continuous variable into groups
for exploratory purposes. The cut() function cuts a continuous variable into a desired number
groups.

Let's see an example. We have our maxgrip variable which is a continuous variable. Type
table(dati$maxgrip) to see the outcome.

Correct answer: table(dati$maxgrip)
Hint: Type table(dati$maxgrip)

That's neither a nice output nor an informative table. Let's make it better with
the cut function. maxgrip goes from 0 to 42, so let's cut it in groups of 5. So the amount of
people between 0-5, 5-10, and so on...

Let's read the expression before seeing it. I want R to cut dati$maxgrip from 0
to 45 into chunks of 5. As an additional argument, we want R to include 0, which is the LOWEST
number in our numeric variable.

The corresponding expression would be this cut.maxgrip <- cut(dati$maxgrip, breaks=seq(0, 45, by= 5),
include.lowest=TRUE) . Before typing it down, read it carefully and try to understand it.

Correct answer: cut.maxgrip <- cut(dati$maxgrip, breaks=seq(0, 45, by= 5),include.lowest=TRUE)
Hint: Type cut.maxgrip <- cut(dati$maxgrip, breaks=seq(0, 45, by= 5), include.lowest=TRUE)

The remaining part is easy, write down table() with the cut.maxgrip object inside.

Correct answer: table(cut.maxgrip)
Hint: Type table(cut.maxgrip)

Cool, eh? Finally, for those of you which use correlation, the function is cor(). Want to
calculate the correlation between dati$height and dati$weight? cor(dati$height,dati$weight)
will do the job. Write it down.

Correct answer: cor(dati$height, dati$weight)
Hint: Type cor(dati$height, dati$weight)

I hope all of this was useful! It certainly is to me.
