### commonErrors, part 2.

# load data

data <- read.csv("data/voted_na.csv") # make sure you have the correct relative path

data$HispanOld <- ifelse(data$racename == "Hispanic" & data$age >= 60, TRUE, FALSE)



# the solution:

## Calculate the average first difference by treatment group and by whiteConserv status

first_diffs <- tapply(data$voted, list(data$female, data$HispanOld), mean, na.rm = TRUE)


first_diffs[2,] - first_diffs[1,] # difference between the treatment (female, row 2) with control (male, row 1)


# Note:

# in tapply, in the index/group argument, I am using the list() function
# to take the mean of voted for female and HispanOld. A fourth argument
# includes "na.rm = TRUE" to ignore missing values.

# Please remember to include the solution, compute it (try understand its structure),
# and "knit" the Rmarkdown file commonErrors to render a PDF file. Send me PDF file in Slack.


