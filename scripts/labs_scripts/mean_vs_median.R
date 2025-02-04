#### A question from a classmate:


## Could you elaborate more on the question: 

## When comparing distributions of the same quantities, use the median instead 
## of the mean as the reference point. Why? Could you provide some more details 
## on this?


# Lucas: sure! Let's better run some code to get the intuition.


# assume a vector "x" of values:

x <- c(0:10)

x

# This variable "x" has sample size of 11 observations, ranging from 0 to 10.
# what are the mean and the median of this vector?

mean(x)

median(x)

# They are the same! --> 5. This happens because the data is homogeneously
# distributed or, in other words, because we do not get repeated frequencies
# of numbers (we have one observation with the value of 0, one with the value
# of 1, and so on). This explain why the mean and the median are the same in this
# case.

# More importantly, not only we have an homogeneous distribution, but it is equally
# spaced! Which means that each interval has a change of 1. In other words, there are
# no outliers or extreme cases.


# Now, let's create a new variable "y" with 11 observations, 10 ranging from
# 0 to 9, and the 11th observation with a value of 1000 (a extreme case!).


y <- c(0:9,1000)

y


# what are the mean and the median of "y"?

mean(y)

median(y)

# Oh gosh! In this case, the mean and the median are not equal! And by a lot!!
# What is going on?

# The mean computes each value within the vector of "y" by taking the sum and diving
# it by the sample size

Y <- sum(y) # sum of each value within y

n <- length(y) # total sample size

Y/n # sample mean

# In contrast, the median simply orders the vector from the minimum to the maximum value
# and chooses the one in the middle, or the two in the middle and divides them by 2 when
# the sample size is an even number.


# Question: what is the value that better represents the distribution or population of "y"?

# let's compare the variables "x" and "y"

mean(x) - mean(y)

median(x) - median(y)

# Clearly, the mean value in "y" is an artifact of one outlier or extreme case (with the 
# value 1000). 

# Can we conclude that "x" and "y" are substantially different? Not really, notice
# that 10 out of 11 values in those two variables are exactly equal!

x == y # 10 TRUE, 1 FALSE


# Conclusion, in quantiative variables, if you want to compare two distributons from
# the same Data Generating Process, always comapre them by the medians.

# Extra: notice also that as we increase our sample size "n", the wright of the
# outliers is reduced


z <- c(1:10000,50000)

mean(z)

median(z)

length(z) # sample size = 10001

# Therefore, in very large samples, with few outleirs, mean and median should not
# differ much.

# I hope this helps!










