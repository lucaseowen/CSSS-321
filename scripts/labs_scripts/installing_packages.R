## CSSS 321 - Data Science and Statistics for Social Sciences I 
## Introduction and Installing R and R Studio
## TA: Lucas Owen - UW, Department of Political Science


################################################################################
############################### IMPORTANT NOTICE ###############################
################################################################################

# When installing the necessary packages, please make sure to follow the ordering
# of the lines from line 65 to 115. If you installed successfully qss, you should
# be able to run the tutorial 0 in line 109. Do the tutorial and export the
# report in PDF file to ensure that you have successfully installed tinytext

################################################################################
################################################################################
################################################################################


# Some basics in R:

# <- notice the hash tag symbol '#', it allows you to "comment" the code
# commented code can be run without being executed in the console
# commenting your code is a good practice for future self-references


# The keyboard shortcut to comment out a line is 
# for windows: `Ctrl` + `Shift` + `C`, 
# for macOS: `  Command` + `Shift` + `C`


# how much is 3 + 5?

3 + 5  # result: 8


# comment your code when necessary, but try to keep the text short.


### Creating objects in R

5 # numeric values

"hola" # character values


# We can create objects using the assignment operator '<-'

hola <- 3

hola # every time that we run this object, it will return the value we assigned

# we can assign a series of values to a vector using c()

c(3,5,6)



## Functions

# Functions are “canned scripts” that automate more complicated sets of 
# commands including operations assignments, etc.

# All have in common that they are executed by typing their name 
# followed by round brackets

?install.packages() # function to install packages





## Installation of tidyverse, see: https://www.tidyverse.org/packages/

install.packages("tidyverse") # you only need to install packages once

library(tidyverse)



# In the above code, we have use the function "install.packages()"
# The values in quotes represent a string of text, a class character in R.


## Install the following packages we will use throughout the quarter.

my_packages <- c("usethis", "devtools", "remotes", "tinytex")

my_packages

install.packages(my_packages, repos = "http://cran.rstudio.com")


## Install the following packages by running:
remotes::install_github("kosukeimai/qss-package", build_vignettes = TRUE)
remotes::install_github("rstudio/learnr")
remotes::install_github("rstudio-education/gradethis")
remotes::install_github("mattblackwell/qsslearnr")


# Some macOS seem to have problems in installing the package qss
# if that is your case, install Homebrew, see slides for W1

# Note that TinyTex is not installed yet, you will need it to create PDF files.

tinytex::install_tinytex() # install tiny text only once! comment (#) the code afterwards


## Interactive Tutorials for Quantitative Social Science
## Written by Matthew Blackwell 
## See here: https://github.com/mattblackwell/qsslearnr


# run '?' in front of a function to consult the help file.

?run_tutorial

## See all available tutorials for QSS
learnr::run_tutorial(package = "qsslearnr")

## Run a particular tutorial
learnr::run_tutorial(name = "00-intro", package = "qsslearnr")


# If you do not see any QSS tutorials after scrolling to the bottom, 
# try to restart RStudio and check again. If you still don’t see any tutorials, 
# confirm that you have installed the package by running the following:
  
library(qsslearnr)





