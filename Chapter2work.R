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

## Exercises 2.8

# Problem 1
temp<-c(35,88,42,84,81,30)

# Problem 2
city <-c("Beijing","Lagos","Paris","Rio de Janeiro","San Juan","Toronto")

# Problem 3
names(temp)<-city
temp

# Problem 4
temp[1:3]

# Problem 5
temp[c("Paris","San Juan")]

# Problem 6
12:73

# Problem 7

seq(1,100,2)

# Problem 8

seq(6,55,4/7)

# Problem 9
a <- seq(1,10,0.5)
class(a)

# Problem 10
a <- seq(1,10)
class(a)

# Problem 11

class(1L)

# Problem 12
x<- c("1","3","5")
y<-as.integer(x)
class(y)

?order

#2.10 Exercises

library(dslabs)
data('murders')

# Problem 1
names(murders)
pop <- murders$population
pop <- sort(pop)
pop[1]

# Problem 2

index <- order(murders$population)
index[1]

# Problem 3

which.min(murders$population)

# Problem 4
x <-which.min(murders$population)
states <- murders$state
states[x]

# Problem 5

city_temps <- data.frame(name = city, temperature = temp)
ranks <- rank(murders$population)
my_df <- data.frame(state=states, rank=ranks)
my_df

# Problem 6

ind <-order(murders$population)
states_in_order <- my_df$state[ind]
ranks_in_order <- my_df$rank[ind]
my_df<- data.frame(state_order = states_in_order, rank_order=ranks_in_order)
my_df

# Problem 7
data("na_example")
str(na_example)
mean(na_example)
is.na(na_example)
ind <- !is.na(na_example)
x <- na_example[ind]
mean(x)

# Exercise 2.12

# Problem 1

c <- 5/9*(temp-32)

# Problem 2


sum(1/((seq(1:100))^2))
(pi^2)/6

# Problem 3

murder_rate <- murders$total/murders$population*100000
mean(murder_rate)

murders$total

# 2.14 Exercises

# Problem 1

library(dslabs)
data("murders")
murder_rate <- murders$total/murders$population*100000
low <- murder_rate<1

# Problem 2

which(low)

# Problem 3

murders$state[which(low)]

# Problem 4
unique(murders$region)
NE <- murders$region=='Northeast'

NE_and_low <- low & NE

x <- which(NE_and_low)
murders$state[x]

# Problem 5

y<-mean(murder_rate)

below_murder_rate <- murder_rate<y 
sum(below_murder_rate)

# Problem 6
?match
ind <- match(c('AK','MI','IA'),murders$abb)
murders$state[ind]

# Problem 7
s <- c("MA","ME","MI", "MO", "MU") 
x<-s %in% murders$abb


# Problem 8

ind<-which(!x)
s[ind]

# 2.16 Exercises

# Problem 1
population_in_millions <- murders$population/10^6
total_gun_murders <- murders$total
plot(population_in_millions,total_gun_murders)

plot(log10(population_in_millions),log10(total_gun_murders))

# Problem 2

hist(log10(population_in_millions))

x <- with(murders, log10(population))
hist(x)

# Problem 3

boxplot(x~region,data = murders)
