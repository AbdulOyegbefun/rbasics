# 4.2 Exercises

# Problem 1
co2
# answer is d

# Problem 2
ChickWeight
head(ChickWeight)
# answer is b

# Problem 3
BOD
# the answer is c

# Problem 4
BJsales #tidy
EuStockMarkets # tidy
DNase # tidy
Formaldehyde # tidy
Orange # tidy
UCBAdmissions #not tidy



# 4.4 Exercises

# Problem 1
library(dplyr)
library(dslabs)
data(murders)

murders <- mutate(murders, population_in_millions = population/10^6)
murders <- mutate(murders, rate = total/population*100000)

# Problem 2

murders <- mutate(murders, rank=rank(rate))
murders

# Problem 3
names(murders)
select(murders, state, abb)

# Problem 4

filter(murders, rank<=5)

# Problem 5
no_florida <- filter(murders, state!="Florida")
no_south <- filter(murders,region=="South")
nrow(no_south)

# Problem 6
murders_nw <- filter(murders, region %in% c("Northeast","West"))
nrow(murders_nw)

# Problem 7

my_states <- filter(murders,region %in% c("Northeast","West") & rate<1) 
select(my_states,state,rate,rank)

# Exercise 4.6

# Problem 1
murders |> 
  filter(region %in% c("Northeast","West"))|>
  select(state,rate,rank)

# Problem 2

data(murders)

my_states <- murders |>
  mutate(rate=total/population*100000)|>
  mutate(rank=rank(-rate))|>
  filter(region %in% c("Northeast","West") & rate<1)|>
  select(state,rate,rank)
my_states

# 4.10 Exercises

install.packages("NHANES")
library(NHANES)
data("NHANES")
head(NHANES)
names(NHANES)
unique(NHANES$Gender)
NHANES |> filter(AgeDecade==" 20-29" & Gender=="female")|>
  summarise(avg=mean(BPSysAve,na.rm=TRUE), stdev=sd(BPSysAve,na.rm=TRUE))

# Problem 2
ref_avg <- NHANES |> filter(AgeDecade==" 20-29" & Gender=="female")|>
  summarise(avg=mean(BPSysAve,na.rm=TRUE), stdev=sd(BPSysAve,na.rm=TRUE))|>
  pull(avg)
ref_avg

# Problem 3

NHANES |> filter(AgeDecade==" 20-29" & Gender=="female")|>
  summarise(maximum=max(BPSysAve,na.rm=TRUE), minimum=min(BPSysAve,na.rm=TRUE))

# Problem 4
NHANES |> filter(Gender=="female")|>
  group_by(AgeDecade)|>
  summarise(avg=mean(BPSysAve,na.rm=TRUE),stdev=sd(BPSysAve,na.rm=TRUE))

# Problem 5
NHANES |> filter(Gender=="male")|>
  group_by(AgeDecade)|>
  summarise(avg=mean(BPSysAve,na.rm=TRUE),stdev=sd(BPSysAve,na.rm=TRUE))

# Problem 6

NHANES |> group_by(AgeDecade,Gender)|>
  summarise(avg=mean(BPSysAve,na.rm=TRUE),stdev=sd(BPSysAve,na.rm=TRUE))

# Problem 7

NHANES |> filter(AgeDecade==" 40-49", Gender=="male", !is.na(BPSysAve))|>
  group_by(Race1)|>
  arrange(BPSysAve)|>
  select(BPSysAve,everything())
  

# 4.15 Exercises

# Problem 1

data(murders)
murders
class(murders)
# answer is b

# Problem 2
murders_tibble <- as_tibble(murders)

# Problem 3
murders |> group_by(region)

# Problem 4
names(murders)
murders$population|>
  log()|>
  mean()|>
  exp()

# Problem 5
library(purrr)
compute_s_n <- function(n){
  x<- 1:n
  tibble(n=n, s_n = sum(x), s_n_2 = sum(x))
  
}
map_df(n,compute_s_n)
