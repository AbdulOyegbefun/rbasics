## 3.6 Exercises

# Problem 1

# I will return NOT all positives

# Problem 2

#b

# Problem 3

new_names <- function(x){
  if(nchar(x)>8){
    print("State abbreviation")
  } else{
    print("Do nothing")
  }
}
new_names("k")
new_names("Ihave more than 8 chafs")

# Problem 4

sum_n <- function(n){
  n*(n+1)/2
}
sum_n(5000)
sum_n(100)

# Problem 5

altman_plot <- function(x,y){
  plot(x-y,x+y)
}


altman_plot(1:10,seq(1:10))
# Problem 6

#3

# Problem 7

compute_s_n <- function(n){
  sum(seq(n)^2)
}

compute_s_n(10)

# Problem 8
s_n <- vector("numeric",length = 25)

for(n in 1:25){
  s_n[n] <- compute_s_n(n)
} 

# Problem 9

?sapply

sapply(1:25,compute_s_n)

# Problem 10
library(purrr)
?map_dbl

map_dbl(1:25,compute_s_n)

# Problem 11
sn <-map_dbl(1:25,compute_s_n)
 
# Problem 12

n <- 1:25
Sn <- n*(n+1)*(2*n+1)/6
Sn
identical(Sn,sn)
