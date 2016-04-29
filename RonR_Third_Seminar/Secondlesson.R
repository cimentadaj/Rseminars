
## Download the dataset asfr1314ine.txt
## Download the asfr75012ine1.csv and save it as asfr7512
## asfr7512 <- read.table("asfr752012ine1.csv", sep = ",", header=TRUE)
## create even vector with the length of the asfr data set.

Hello and welcome to the second lesson of the 3rd RonR! Seminar. In this lesson we're gonna cover
some basic data manipulation tricks like creating, renaming and recoding variables. Additionally
we will cover how to subset and filter a data set.


We're gonna use two datasets that have been already loaded into your working directory. asfr7512
was the data frame we used in the past lesson and asfr1314 are two additional years of the asfr7512
data frame.

Both these datasets contain fertility rates for ages between 15 to 50. asfr7512 contains data from 1975
to 2012 whereas asfr1314 contains data from years 2013 and 2014.

Type head(asfr7512) to have a quick look at what we're working with.

Correct answer: head(asfr7512)
Hint: Type head(asfr7512)

Go ahead and inspect asfr1314 the same way we did for asfr7512

Correct answer: head(asfr1314)
Hint: Use head(asfr1314) to get a glimpse of the data.

We have two datasets which have THE SAME number of rows and we would like to merge them together.

We can use the cbind() function which stands for column bind. Its arguments are straightforward:
cbind(object1,object2,.....objectN). As long as the objects have the same number of rows, cbind()
will combine everything into one data frame.

You should be able to combine both datasets without my help. Try it using these pointers:
using cbind, include the datasets asfr7512 and asfr1314 as arguments.

Correct answer: cbind(asfr7512,asfr1314)
Hint: We have two datasets which have to be used as the arguments of cbind. The correct
expression would be cbind(asfr7512,asfr1314)

Perfect! R binded both datasets. But, there seems to be two problems we need to consider. Have a look
at the last three columns. Which seem to be the problems?

Answers: I don't see any problem; The three last columns are not in the correct order;
		 Year 2013 is repated twice; Year 2013 is repeated twice and the order of 2014 and 2013
		 needs to be reversed

Correct answer: Year 2013 is repeated twice and the order of 2014 and 2013
		 needs to be reversed

Let's divide the problem into two. First, the last column of the asfr7512 is empty,
we need to delete it. Second, the order of the column in asfr1314 is incorrect and
we need to reverse it. These two problems can be easily solved separetly and THEN
column bind the datasets.

Since you're already an R expert, we're gonna write it all in one expression.

The expression would read like this: bind asfr7512 without its last column with
asfr1314 but reversing its order. The correct expression would be like this
asfr <- cbind(asfr7512[, -ncol(asfr7512)], rev(asfr1314)). Type it yourself.

Correct answer: asfr <- cbind(asfr7512[, -ncol(asfr7512)], rev(asfr1314))
Hint: Type asfr <- cbind(asfr7512[, -ncol(asfr7512)], rev(asfr1314))

Take a moment to go over the code and understand what we did.

The only thing you shouldn't be familiar here is the rev() function. But don't worry about it,
it simply takes anything, a vector, data frame and reverses the order of its contents.

Let's see the result! Type asfr

Correct answer: asfr
Hint: Type asfr

The data is complete now. Before moving into recoding, let's do a final test on indexing columns.

All of our columns are years except the first one, which is age. Suppose
we want to divide all columns except the first one by 1000 and ASSIGN our changes to our
dataset. What would be the correct expression?

Answers: asfr[,2:ncol(asfr)] <- asfr[,2:ncol(asfr)]/1000;
		 asfr[2:ncol(asfr)] <- asfr[2:ncol(asfr)]/1000;
		 asfr[,2:ncol(asfr)]/1000;

Correct answer: asfr[,2:ncol(asfr)] <- asfr[,2:ncol(asfr)]/1000 or 
				asfr[2:ncol(asfr)] <- asfr[2:ncol(asfr)]/1000

You might not have noticed but the there were TWO correct answers. I'll let you discover
which ones they were on your own ;)

Let's move on to recoding variables. Remember that our first variable in the dataset is
Age from 15 to 50. Suppose we want to create a new variable that will give the value
1 for women between age 15 and 20, a value of 2 for women between 20 and 25, and so on.. until age 50.

Let's start by creating our new variable. To call any variable form a data frame we use the $ sing.
Example: asfr$variablename. In order to create a variable we do the same but with a new name.
We want to create a new variable named ageG that contains NA (missing values). 

Let's do that by typing asfr$ageG <- NA

Correct answer: asfr$ageG <- NA
Hint: Type asfr$ageG <- NA

Our desired expression will read like this: take asfr$ageG and where
asfr$Age is bigger or equal to 15 and asfr$Age is less than 20, assign it to age group 1.
Following this exact sentence, what is the correct expression?

Answers: asfr$ageG[asfr$Age >= 15 & asfr$Age < 20] <- 1;
		 asfr$ageG[ ,asfr$Age >= 15 & asfr$Age < 20] <- 1;
		 asfr$ageG  <- asfr$Age >= 15 & asfr$Age < 20 <- 1;
		 asfr$ageG[asfr$Age >= 15 & < 20] <- 1


Between or equal to 15 and smaller than 20 is the first age group. The second age group
would be between or equal to 20 and smaller than 25. Type asfr$ageG[asfr$Age>=20 & asfr$Age<25] <- 2
to get the correct result.

Correct answer: asfr$ageG[asfr$Age>=20 & asfr$Age<25] <- 2
Hint: Type asfr$ageG[asfr$Age>=20 & asfr$Age<25] <- 2

We won't do it for all age groups but the SAME sequence would go up to the 7th age group,
which would be between 45 and 50 years.

There are much more efficient ways of doing this using loops and packages like
car but those are more advanced topics that you will learn in future lessons.

I don't know if you noticed but our variable names are incorrect. Type names(asfr) or colnames(asfr)
to see the names of the columns.

Correct answer: names(asfr) or colnames(asfr)
Hint: Type either names(asfr) or colnames(asfr)

Let's change all column year names to exclude the X in front. Thinking it through,
we could just take the vector of column names, exclude the first(Age) and last(ageG) column and
replace the years with the correct year numbers.

Let's start by getting the vector without the first and last column. You can do so by typing
colnames(asfr)[2:(ncol(asfr)-1)]. Try it.

Correct answer: colnames(asfr)[2:(ncol(asfr)-1)]
Hint: Type colnames(asfr)[2:(ncol(asfr)-1)]

Go over this line of code again. We take colnames(asfr) and the we subset its contents from
the second position UNTIL the last column, minus 1. ncol(asfr)-1 in this case would equal 41 because
the dataframe has 42 columns minus 1. 

That expression gives us the correct vector. Now we need to replace the colum names with
the correct ones. We need years from 1975 to 2014. Using the seq() function this is really simple.
Try seq(1975,2014,1).

Correct answer: seq(1975,2014,1)
Hint: Type seq(1975,2014,1)

Now put everything together. colnames(asfr)[2:(ncol(asfr)-1)] <-
seq(1975, 2014,1). Type it!

Correct answer: colnames(asfr)[2:(ncol(asfr)-1)] <- seq(1975, 2014,1)
Hint type: Put everything together by typing colnames(asfr)[2:(ncol(asfr)-1)] <- seq(1975, 2014,1)

We could've deleted the ageG column to exclude the -1 from the expression. We could have done it
easily by assigning the desired column to NULL; asfr$ageG <- NULL would be the equivalent

Surpise quiz! Suppose I have a vector named even which has the sequence c(2,4,6,8..) up until the 
number of columns of the dataset. If I wanted to work only with the even years of the dataset,
which expression would do the trick? Remember that the first column is Age and the last column
is ageG, so you have to delete them.

Answers: asfr[, -c(1,ncol(asfr)][,even];
		 asfr[, even];
		 asfr[ -c(1,ncol(asfr)) , even];
		 asfr[even]

Correct answer: asfr[, -c(1,ncol(asfr)][,even]

Briefly let's introduce a command that can be handy: subset()

subset() takes a data frame as its first argument and subsets any condition for the rows and columns.
I think two examples will suffice to make you understand. 

We want to subset only women below 20 years. subset(asfr, Age<20) will do the trick.

If we add a comma to that expression then we can specify which columns we want. By default
R chooses all columns. I want you to subset the asfr dataframe for observations below Age 20 and
only for the second and third column. Don't assign it to any object.
Hint: remember to concatenate both column numbers.

Correct answer: subset(asfr, Age<20, c(2,3))
Hint: Type subset(asfr, Age<20, c(2,3))

Great! Let's finish by creating a dummy variable. Dummy variables always contain either a 1
or a 0. Suppose you have a gender variable which has 1 for males and 0 for females, then
that's a dummy variable.

There are several ways of creating a dummy variable(for example with the which function). 
I'm gonna try to show you a familiar way of doing it.

Let's suppose we want to create a new variable named low14 which has a 1 when the fertility
rate in 2014 was SMALLER then 0.005 and 0 when it has higher. Let's create a variable
with only zeros first. Type asfr$low14 <- 0

Correct answer: asfr$low14 <- 0
Hint: Type asfr$low14 <- 0

Since R recycles numbers, it automatically repeates the 0 as many times as rows of the data frame.
With that done, we only have to replace the 0 with a 1 where observations had a fertility
rate lower than 0.005 in 2014.

We could do that the same way we recoded variables for the age groups:
asf$low14[asfr$2014 < 0.05] <- 1 . Type it!

Correct answer: asfr$low14[asfr$2014 < 0.05] <- 1
Hint: Type asfr$low14[asfr$2014 < 0.05] <- 1

Read it again and understand what we did.

Let's see if everything was correct type head(asfr) and confirm at least for some cases when
asfr$low14 has a 1, column 2014 is below 0.05

Correct answer: head(asfr)
Hint: Type head(asfr)

You're all set. We covered a lot of material today, congrats!
