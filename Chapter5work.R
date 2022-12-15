# Exercuses 5.3

# Problem 1
path <- system.file("extdata", package="dslabs")
files <- list.files(path)
files
fullpath <- file.path(path,"olive.csv")
read_csv(fullpath)

# Problem 2
?read_csv
dat <- read_csv(fullpath)

# Problem 3
names(dat)
readLines(fullpath, n= 1L)
?readLines
