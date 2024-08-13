rm(list = ls())

x <- c(2.1, 4.2, 3.3, 5.4)
x[c(3,1)]
x[order(x)]

x[c(3,1)]

y <- x[order(x)]
# we could also set the order differently  (see below)
x[order(x, decreasing = TRUE)]
x[-1]
x[-c(3,1)]
x[c(-1,2)]
x[c(TRUE, TRUE, FALSE, FALSE)]
x[x > 3]


x[c(TRUE, FALSE)]
x[c(TRUE, TRUE, NA, FALSE)]
x[]
x[0]
x <- 1:5
x
x(c(1,2)) <- 2:3 # ask for explanation
x[-1] <- 4:1
x
x[c(TRUE, FALSE, NA)] <- -1


df <- data.frame(a = c(1, 10, NA))
df$a[df$a<5] <- 0
df

mtcars
mtcars[mtcars$gear == 5,]
# we have subset our data down ^ down to only those cars that have 5 gears, but we have not saved it to a variable or vector so we are doing this only for vizualization purposes

mtcars[mtcars$gear == 5 & mtcars$cyl == 4,]
# we can perform this ^ in v this way,too
subset(mtcars, gear == 5 & cyl == 4)

library(tidyverse)
ggplot(data = subset(mtcars, gear == 5 & cyl == 4),
       aes( x = mpg, y = disp))+
  geom_point()


# this is how we can create a df AND remove part of it. we add "letters",which is a constant, bc we are removing letters.
df <- data.frame(x = 1:3, y = 3:1, z = letters [1:3])
df 
df$z <- NULL 
df


# here we are trying to avoid writing out what we want and don't want, goal is to write in less code what we do NOT want

df[c("x","y")] 
# ^ this line requires us to enter the columns we want to keep

setdiff(names(df), "z")
# ^ this line requires to enter only the column we want to delete. it asks r to compare column Z with the df and delete its diferences. 

