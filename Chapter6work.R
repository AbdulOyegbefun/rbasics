# 6.2 Exercises

# Problem 1

library(data.table)
library(dslabs)
install.packages("data.table")
data("murders")
murders <- setDT(murders)

murders[,rate := total/population*100000]

# Problem 2

murders[,rank := rank(rate)]

murders

# Problem 3

murders[,.(state,abb)]

# Problem 4

murders[rank<=5]

# Problem 5

no_south <- murders[region!="South"]
nrow(no_south)

# Problem 6

murders_nw<- murders[region %in% c("Northeast","West")]
nrow(murders_nw)

# Problem 7

my_states <- murders[region %in% c("Northeast","West") & rate<1,.(state, rate,rank)]
my_states

# 6.5 Exercises

library(NHANES)
data("NHANES")
# Problem 1
names(NHANES)
unique(NHANES$Gender)
NHANES[Gender=="female" & AgeDecade==" 20-29",(avg=mean(BPSysAve, na.rm = TRUE))]
data("murders")
rm(avg)
NHANES[Gender=="female" & AgeDecade==" 20-29",.(maximum=max(BPSysAve, na.rm = TRUE), minimum=min(BPSysAve,na.rm=TRUE))]
