## Install "Haven" and load it
## Set Working Directory

Hello! Welcome to the 1st lesson of the third RonR! seminar. On this lesson we will talk about how
to open text files, different Excel files, SPSS, Stata and SAS files. Finally, we will
talk about some data exploratoration commands normally used in R.

Note: You will need to have access to an internet connection to complete this session.

First of all you need to know how to access your working directory and how to set it.
The working directory is simply the place where R will look for stuff when you run any command.
Please type getwd() to see your working directory.

Correct answer: getwd()
Hint: Type getwd()

Although we won't go into it, you can change this directory with the setwd() function.
An example line would be setwd("your new path"). Although this is easy, be sure to read
more about setwd() because windows often uses the '\' character and mac uses the '/'.
Frustrating problems can arise from simple things like this.

When you installed the course we took the liberty of downloading some data files to your
working directory. Let's start by opening one of those csv files. Open the physical folder of your
working directory and open the file asfr752012ine1.csv.

Each number is separated by a comma. Let's try to read
that file using the read.table function. Type read.table("asfr752012ine1.csv")

## Remember to set the working directory back in case the person changed it.

Correct answer: read.table("asfr752012ine1.csv")
Hint: Type read.table("asfr752012ine1.csv")

That's not a nice looking table. Namely because the first two lines are the column names and
because we didn't specify that the table is separated by commas. We can fix that by
typing asfr7512 <- read.table("asfr752012ine1.csv", sep = ",", header=TRUE). Go ahead.

Correct answer: asfr7512 <- read.table("asfr752012ine1.csv", sep = ",", header=TRUE)
Hint: Type asfr7512 <- read.table("asfr752012ine1.csv", sep = ",", header=TRUE)

Since we assigned the new dataset to asfr7512, type asfr7512 to see its contents.

Correct answer: asfr7512
Hint: Type asfr7512

This looks like a proper data set now.

In the same folder that you opened that spreadsheet, you should also see a file named 
INE_fempopJul1975.xls. Open it as well. If you don't have Excel, then just follow along,
 everything will still work fine.

There's some annoying text in the first few lines and in the bottom lines.

Although we could read that xls file from R, the best way to read an Excel file is to export
it to a comma delimited file and import it using the method above. Alternatively you can use
one of the many packages available (XLConnect, xlsx, gdata, etc.).

Go to this website http://www.convertfiles.com/convert/document/XLSX-to-CSV.html,
drag the xls file from the folder, convert it to CSV and download it.

We wanna open that file into R but it has some lines at the top and bottom that we have to ignore
in order to have a clearn dataset. The whole command is femPop75 <- read.table("INE_fempopJul1975.csv",
sep = ",", skip=9, nrows=51, header=TRUE). Type it as it is.

Correct answer: femPop75 <- read.table("INE_fempopJul1975.csv", sep = ",", skip=9, nrows=51, header=TRUE)
Hint: Type femPop75 <- read.table("INE_fempopJul1975.csv", sep = ",", skip=9, nrows=51, header=TRUE)

Let's make sense of the command: read the csv file "INE_fempopJul1975.csv", specify that it is comma
separated, skip the first 10 lines(because there's useless text there), read UP until row 51
and treat the first row as the column names.

Type View(femPop75)

Correct Answer: View(femPop75)
Hint: Type View(femPop75)

To read Stata, SPSS and SAS files you can use the Haven package. I took the liberty of installing
it and loading it for you. The three main functions are read_dta, read_spss, and read_sas, for Stata,
SPSS and SAS respectively.

You have a dataset for each program in your working directory, let's read them.

For the Stata file, we use the read_dta function. The correct expression would be read_dta("Egypt.dta").
Go ahead and try it yourself.

Correct answer: read_dta("Egypt.dta")
Hint: Type read_dta("Egypt.dta")

For SPSS the logic is exactly the same, read_spss("Anxiety.sav") would read the Anxiety dataset from
the working directory. Go ahead and type it.

Correct answer: read_spss("Anxiety.sav")
Hint: Type read_spss("Anxiety.sav")

Following the same logic, try it for the SAS dataset. The dataset name is "airline.sas7bdat" and the 
function to use is read_sas.

Correct answer: read_sas("airline.sas7bdat")
Hint: You have to read the dataset using the read_sas function like this: read_sas("airline.sas7bdat")

Reading datasets can be a complex topic and this is just the tip of the iceberg. For extra information
on each specific function you can type any of the functions presented here with a preceding ? in front.
For example, ?read.table or ?read_dta

Going back to our initial csv file, let's explore the dataset. First let's see which class it is
just to make sure we have a data frame. Type class(asfr7512)

Correct answer: class(asfr7512)
Hint: Type class(asfr7512)

Phew!  We're alright for now. Let's look at how many rows and
columns it has by typing dim(asfr7512).

Correct answer: dim(asfr7512)
Hint: dim(asfr7512)

dim stands for dimensions, as you might have thought. Remember when we used the [rows, columns]
option to subset columns and rows from matrices and data frames? In R, everything that deals with rows
and columns has that specific order: rows and column. In this case, this data frame has 35 rows
and 40 columns.

Additionally, we have some specific functions for that like nrow() and ncol(). As their names
suggest, they show the number of rows and columns. Try the ncol() with our asfr7512 dataset.

Correct answer: ncol(asfr7512)
Hint: Type ncole(asfr7512)

To access the names of the columns we can do so with the names() function. This will
give you a character vector containing each column name. If I told you that the first five column
names were c("Age","X1975","X1976","X1977","X1978"), what would be the result of names(asfr7512)[3]

Answers: Age;X1975;X1976;X1977;X1978
Correct Answer: X1976

Let's take a look at how to visualize a dataset. So far we've only used the View() function to
visulize our data physically. If we typed asfr7512 in the console, R would print the entire dataset
in the console, which can be quite ugly. For that we have the head() function. Type head()
with the name of our dataset inside(the name is asfr7512)

Correct answer: head(asfr7512)
Hint: Type head(asfr7512)

This is a nice way of getting a feel of the dataset without printing ALL observations. 

Alternatively you can add or decrease the number of rows that head() prints by specifing the 
desired rows in the n = argument.

Surprise quiz! How would you read this? head(asfr7512[,2:10],n = 20) Advice: read the expression
by chunks instead of reading everything together.

Answers: Print the column 20 of the asfr7512 dataset for the 2nd and 10th row;
		 Print the columns 2 and 10 and only show the first 20 rows;
		 Print from columns 2 to 10 and only show the first 20 rows;
		 Print from columns 2 to 10 and include the column 20

Correct Answer: Print from columns 2 to 10 and only show the first 20 rows

Similarly to head(), we have tail(). I think it's pretty intuitive but confirm your hunch
by typing tail(asfr7512)

Correct answer: tail(asfr7512)
Hint: Type tail(asfr7512)

You get the bottom part of the dataset. Let's finish by using the summary() and str() functions.

Summary gives you a summary of each column in the data frame which includes descriptive statistics
like minimum, maximum, quantiles and mean. Inspect the results by typing summary(asfr7512)

Correct answer: summary(asfr7512)
Hint: summary(asfr7512)

Lastly, str() gives the structure of each column. For each column you get its' name,
its' class and some of its values. If the column is a factor, you get the number of levels,
among other things.

Hope this was useful! These are functions you will constantly use in R so congratulations!

