###
### ggplot2 tutorials
###

# ggplot2 is an implementation of the grammar of graphics by Leland Wilkinson
# written by Hadley Wickham (while a grad student at Iowa State)
# a third graphics system for R (along with base and latice)

# think of a 'verb', 'noun', and 'adjective' for graphics
# allows for a theory of graphics on which to build new graphics and graphics objects

# basic components
  # data frame
  # aesthetic mapping : how data are mapped to color, size
  # geoms : geometric objects like points, lines, shapes
  # facets : for conditional plots
  # stats : statistical transformations like bining, quantiles, smoothing
  # scales : what scale an aethetic map uses (example : male = red, female = blue)
  # coordinate system

# ggplot2 = "artists palette"
# plots are built up in layers
  # plot the data
  # overlay a summary
  # metadata and annotation


#########################################################################################

setwd("/home/dc/myProjects/learn/learnCode/learnR/ggplot2_tutorial/")

# install.packages("ggplot2")
library(ggplot2)

#########################################################################################

# qplot()
#   takes in a dataframe
#   plots are made up of aesthetics (size, shape, color) and geoms (lines, points)
#   factors should be labeled

#########################################################################################

# mpg is dataset built into ggplot2

# miles per gallon for a variety of cars
  # 234 obs
  # 11 variables
  
# we're going to look at 
  # hwm : highway mileage
  # manufacurer
  # drv : front, rear, four wheel drive

str(mpg)
summary(mpg)
fix(mpg)
names(mpg)

# plot 1
qplot(displ, hwy, data = mpg)

# plot 2
qplot(displ, hwy, data = mpg, color = drv)

# plot 3
qplot(displ, hwy, data = mpg, geom = c("point", "smooth"))

# plot 4
qplot(displ, hwy, data = mpg, color = drv, geom = c("point", "smooth"))

# plot 5
qplot(hwy, data = mpg, fill = drv)

# plot 6
qplot(displ, hwy, data = mpg, facets = . ~ drv) # we separate by factor using facets

#########################################################################################

# MAACS Cohort
  # mouse allergen and asthma cohort study
  # baltimore children (ages 5:17)
  # persistent asthma, exacerbation and its relationship with asthma morbidity

  # recent publication: http://goo.gl/WqE9j8

# data is included in working directory as maacs.Rda
load("maacs.Rda")

str(maacs)
  # eno : exhaled nitic oxide
  # pm25 : fine particulate matter
  # mopos : sensitized to mouse allergen

# histogram of eNO
qplot(log(eno), data = maacs)
# histogram by group
qplot(log(eno), data = maacs, fill = mopos)

# density smooth

qplot(log(eno), data = maacs, geom = "density")
qplot(log(eno), data = maacs, geom = "density", color = mopos)

# scatterplots: eNO vs. PM(2.5)

qplot(log(pm25), log(eno), data = maacs)
qplot(log(pm25), log(eno), data = maacs, shape = mopos)
qplot(log(pm25), log(eno), data = maacs, color = mopos)

qplot(log(pm25), log(eno), data = maacs, color = mopos, geom = c("point", "smooth"))
qplot(log(pm25), log(eno), data = maacs, geom = c("point", "smooth"), facets = . ~ mopos)

# why does method = "lm" argument NOT work?


#########################################################################################

# Plotting with ggplot2: Part 2

# ggplot2()
  # more advanced and customizable than qplot()


#########################################################################################

# example

# MAACS Cohort
# mouse allergen and asthma cohort study
# baltimore children (ages 5:17)
# persistent asthma, exacerbation and its relationship with asthma morbidity
# recent publication: http://goo.gl/WqE9j8
# data is included in working directory as maacs.Rda

# does BMI (normal vs. overweight) modify the relationship between PM(2.5) and asthma symptoms?

# env <- readRDS("maacs_env.rds")
# id <- 1:750
# maacs <- data.frame(id, env)
# save(maacs, file = "maacs.rda")

load("maacs.Rda")

maacs

attach(maacs)

str(maacs)
  # eno : exhaled nitic oxide
  # pm25 : fine particulate matter
  # mopos : sensitized to mouse allergen
names(maacs)


qplot(logpm25, NocturnalSympt, data = maacs, facets = . ~ bmicat, geom = c("point", "smooth"))

# getting context on our data
head(maacs[, 1:3])

# creating ggplot object
g <- ggplot(maacs, aes(logpm25, NocturnalSympt))
# getting summary of ggplot object
summary(g)

# first plot with point layer

p <- g + geom_point()
print(p)

# adding more layers: smooth

g + geom_point() + geom_smooth()
g + geom_point() + geom_smooth(method = "lm")

# adding more layers : facets

g + geom_point() + facet_grid(. ~ bmicat) + geom_smooth(method = "lm")


# annotation

  # labels: xlab(), ylab(), labs(), ggtitle()
  # each of the "geom" functions has options to modify
  # for this that only make sense globally, use theme()
    # example: theme(legend.position = "none")

  # two standard appearance themes are included
    # theme_gray() : default theme (gray background)
    # theme_bw() : more stark / plain

# modifying aesthetics
g + geom_point(color = "steelblue", size = 4, alpha = 1/2)
g + geom_point(aes(color = bmicat), size = 4, alpha = 1/2)

# modifying labels
g + geom_point(aes(color = bmicat)) + labs(title = "MAACS Cohort") + labs(x = expression("log " * PM[2.5]), y = "Nocturnal Symptoms")

# customizing the smooth
g + geom_point(aes(color = bmicat), size = 2, alpha = 1/2) + geom_smooth(size = 4, linetype = 3, method = "lm", se = FALSE)

# changing the theme
g + geom_point(aes(color = bmicat)) + theme_bw(base_family = "Times")

# a notes about axis limits

# producing random data frame 
testdat <- data.frame(x = 1:100, y = rnorm(100))

# including outlier in dataframe
testdat[50,2] <- 100 ## outlier!

# generic plot
plot(testdat$x, testdat$y, type = "l", ylim = c(-3,3))

# ggplot
g <- ggplot(testdat, aes(x = x, y = y))
g + geom_line()

# axis limits
g + geom_line() + ylim(-3,3) # this is skipping the outlier because it falls outside of the frame
g + geom_line() + coord_cartesian(ylim = c(-3,3))

# more complex example

  # how does the relationship between PM[2.5] and nocturnal symptoms vary by BMI and NO[2]
  # unlike our previous BMI variable, NO[2] is continuous
  # we need to make NO[2] categorical so we can condition on it in the plotting
    # use the cut() function for this

# checking our working environment for the data we will need next
names(maacs)

# making NO[2.5] tertiles

# calculate the deciles of the data
cutpoints <- quantile(maacs$logno2_new, seq(0, 1, length = 4), na.rm = TRUE)

# cut the data at the deciles and create a new factor variable
maacs$logno2dec <- cut(maacs$logno2_new, cutpoints)

# see the levels of the newly created factor variable
levels(maacs$logno2dec)

# final plot

# setup ggplot with data frame
g <- ggplot(maacs, aes(logpm25, NocturnalSympt))

# add layers
g + geom_point(alpha = 1/3) + facet_wrap(bmicat ~ logno2dec, nrow = 2, ncol = 4) + geom_smooth(method = "lm", se = FALSE, col = "steelblue") + theme_bw(base_family = "Avenir", base_size = 10) + labs(x = expression("log " * PM[2.5])) + labs(y = "Nocturnal Symptoms") + labs(title = "MAACS Cohort")

# the above plot can be saved in R as an object, and called later in the code

# SUMMARY

  # ggplot2 is very powerful and flexible if you learn the "grammar" and the various elements that can be tuned / modified
  # many more types of plots can be made; explore and mess around with the package


#########################################################################################

# diamonds data set is preloaded to ggplot2 package

# simple ggplot() + geom_bar() 

str(diamonds)
head(diamonds$cut)
head(diamonds)
p <- ggplot(diamonds, aes(cut))
p + geom_bar()

#########################################################################################

# resources

# https://www.youtube.com/watch?v=HeqHMM4ziXA
# https://www.youtube.com/watch?v=n8kYa9vu1l8
