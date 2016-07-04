# dplyr tutorials

# dplyr

  # there is one observation per row
  # each column represents a variable
  # primary implementation that we will use is the default R implementation
  # there are other implementations (e.g. relational databases)
  
  # developed by Handley Wickham Rstudio
  # optimized and distilled version of plyr package (also by Hadley)
  # does not provide any new functionality per se, but greatly simplifies existing functionality in R
  # provides a "grammar" (in particular, verbs) for data manipulation
  # it is very fast as many key operators are coded in C++

# dplyr verbs

  # select : return a subset of the columns of a data frame
  # filter : extract a subset of rows from a data frame based on logical conditions
  # arrange : reorder rows of a data frame
  # rename : rename variables in a dataframe
  # mutate : add new variables / columns or transform existing variables
  # summarise / summarize : gererate summary statistics of different variables in the data frame, posibly with strata
  
  # there is also a handy print method that prevents you from printing a lot of data to the console

# dplyr properties

  # the first argument is the data frame
  # the subsequent arguments describe what to do with it
  # you can refer to columns in the data frame directly without using the $ operator (just use the names)
  # the result is a new data frame
  # data frames must be formatted and annotated for this to all be useful

library(dplyr)

setwd("/home/dc/myProjects/learn/learnCode/learnR/dplyr_tutorial/")
chicago <- readRDS("chicago.rds")
  # 6940 observations
  # 8 variables

str(chicago)
names(chicago)

#
## select()
#

# selecting specific columns within our data frame

head(select(chicago, city:dptp))
# this selects the columns ranging from city to dptp within the chicago dataset

head(select(chicago, -(city:dptp)))
# this selects all the columns within the chicago dataset except the columns ranging from city to dptp


# this is not particularly easy without these functions...
i <- match("city", names(chicago))
j <- match("dptp", names(chicago))
head(chicago[, -(i:j)])


#
## filter()
#


chic.f <- filter(chicago, pm25tmean2 > 30)
# here we first state conditions for filtering data
head(chic.f, 10)
# then we list the first 10 observations that meet the conditions stated previously

chic.f <- filter(chicago, pm25tmean2 > 30 & tmpd > 80)
# here we go a bit more granular with our conditions
head(chic.f)
# then we list data which meet our conditions


#
## arrange()
#


# used to reorder the rows of a data frame based on the values of a column

chicago <- arrange(chicago, date)
# we are ordering by date
head(chicago)
tail(chicago)

chicago <- arrange(chicago, desc(date))
# we are ordering by date in descending order
head(chicago)
tail(chicago)

#
## rename()
#

# used to rename variables or columns

chicago <- rename(chicago, pm25 = pm25tmean2, dewpoint = dptp)
# give it the data frame, the new name and old name
head(chicago)


#
## mutate()
#

# used to transform existing variables or create new variables based on the transformation of another one


chicago <- mutate(chicago, pm25detrend = pm25-mean(pm25, na.rm = TRUE))
# here we are creating a new variable where we transform an existing variable
# by subtracting the variable_mean from the variable
head(select(chicago, pm25, pm25detrend))

chicago <- mutate(chicago, tempcat = factor(1 * (tmpd > 80), labels = c("cold", "hot")))
# here we are adding a new factor variable whose value is conditional 
# on the value of another variable

hotcold <- group_by(chicago, tempcat)
hotcold

summarize(hotcold, pm25 = mean(pm25), o3 = max(o3tmean2), no2 = median(no2tmean2))
# summarize this hotcold object here
  # which has been split based on the tempcat factor variable
  # what is the mean pm25 for both hot and cold days
  # what is the maximum ozone for hot and cold days
  # what is the median nitrogen dioxide for hot and cold days

summarize(hotcold, pm25 = mean(pm25, na.rm = TRUE), o3 = max(o3tmean2), no2 = median(no2tmean2))
# this gives us a dataframe grouped by tempcat

chicago <- mutate(chicago, year = as.POSIXlt(date)$year + 1900)
# categorize to categorize by year variable
years <- group_by(chicago, year)
# group by year
summarize(years, pm25 = mean(pm25, na.rm = TRUE), o3 = max(o3tmean2), no2 = median(no2tmean2))
# now get summary for each of the years in the dataset

#
## %>%       # we call it the pipeline operator
#

# special operator to chain different operations together, together in a readable way
# data set goes through set operators to create new data set

chicago %>% mutate(month = as.POSIXlt(date)$mon + 1) %>% group_by(month) %>% summarize(pm25 = mean(pm25, na.rm = TRUE), o3 = max(o3tmean2), no2 = median(no2tmean2))
# this is nice because, unlike in the previous examples, we do not need to create a set of temporary variables to feed through other variables
# all we do is feed function outputs through other functions in a chain

# once you learn the dplyr "grammar" there are a few additional benefits:
  # dplyr can work with other data frame "backends"
  # data.table for large fast tables
  # SQL interface for relational databases via the DBI package