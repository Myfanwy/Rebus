## Title: Rebuses
## Date: 2-18-2015
## File: Rebuses.r
## Author(s): Myfanwy Johnston
## Purpose: To store all the rebus objects

# current limitations: have to source this before you rebus() will work.


library(ggplot2)
Hour <- seq(1:12)
y <- sample(0:100, 12, rep=TRUE)
df <- as.data.frame(cbind(Hour, y))

## build plot

Hour <- seq(1:12)
y <- sample(0:100, 12, rep=TRUE)
df <- as.data.frame(cbind(Hour, y))
ggplot(df, aes(Hour,y)) + 
  geom_bar(stat = 'identity', fill = "steelblue", colour = "black") + 
  scale_x_continuous(breaks = seq(1,12, by=1)) + 
  geom_text(data = NULL, x = 11, y = 40, label = "@", color = "yellow", size = 10) + 
  ylab(" ")
