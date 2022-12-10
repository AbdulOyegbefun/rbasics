# Problem 1
n = 100
sum = (n*(n+1))/2

print(sum)

# Problem 2

n=1000
sum = (n*(n+1))/2

print(sum)

# Problem 3

n <- 1000
x <- seq(1,n)
sum(x)

# The answer is b

# Problem 4

log10(sqrt(100))

# Problem 5

# The answer is c

## 2.5  Exercises

# Problem 1
library(dslabs)
data(murders)

str(murders)

# The answer is c. str is good at looking at the columns

# Problem 2
names(murders)

# The column names are state, abb, region, population, total

# Problem 3

a <- murders$abb
class(a)

# Problem 4

b <- murders["abb"]

identical(a,b)
class(b)
# They are not the same.

# Problem 5 
class(murders$region)
length(levels(murders$region))

# There are 4 regions in this dataset

# Problem 6
table(murders$region)

# The function table takes a vector(column) and returns
# the frequency of each element(observation)



