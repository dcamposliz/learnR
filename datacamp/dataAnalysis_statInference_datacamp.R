#
#
##
###
######
#########
############

##################### INTRODUCTION TO R

############
#########
######
###
##
#
#

pdf("dataAnalyis_statInference.pdf")

#############
#############	Welcome!
#############

	# the hashtag us used to add comments

	# an addition
	5 + 5

	# a substraction
	5 - 5

	# a division
	(5 + 5)/2

	# a plot
	plot(cars, type="o", col="blue")

#############
#############	Load a data set into R
#############


	# Read in your data set and assign to the object:
	present <- read.table("http://assets.datacamp.com/course/dasi/present.txt")

	# This will print your data set in the console:
	present

#############
#############	Examining the data set
#############

	# The present data frame is already loaded.
	# Print the number of rows and variables with the 'dim' function:
	dim(present)

	# Print the names of the variables of the data frame:
	names(present)

#############
#############	Question 1
#############
	
	# How many variables are there in the data set 'present'

		# There are three variables included in the data set 'present'

#############
#############	Some more exploration	
#############

	# The present dataset is already loaded.
	# Find the number of boys born each year, and assign your answer to 
	num_boys <- present$boys

	# Find the number of girls born each year, and assign your answer to
	num_girls <- present$girls 

	# This will print the results
	num_boys
	num_girls

#############
#############	Question 2
#############

	# What command would you use to view just the counts of girls born?

		present$girls

#############
#############	Putting it in a graph
#############

# plotting number of girls born per year

	# The present dataset is already loaded.

	# Type here the code to create the plot:
	# plot()

	# the first parameter is on the x axis
	# the second parameter is on the y axis

	plot(present$year, present$girls)

#############
#############	Connecting the dots
#############

	# The present dataset is already loaded.

	# Create the plot here:

	plot(present$year, present$girls, type = "l")


#############
#############
#############

#############
#############
#############

#############
#############
#############

#############
#############
#############

#############
#############	R  - The big calculator
#############

	# The present dataset is already loaded.
	# The vector babies:
	babies <- present$boys + present$girls

	# Your plot

	# as function of time (present year on the x-axis)
	# we are plotting babies (babies on the y-axis)
	plot(present$year, babies, type="l")

#############
#############	Question 4
#############
	
	babiesTime <- data.frame(present$year, babies)

	babiesTime

	babiesTime[18,]
	babiesTime[21,]
	babiesTime[22,]
	babiesTime[52,]

	# babiesTime[22,] has the biggest amount

#############
#############	Question 5
#############

	boysProportion <- present$boys / (present$boys + present$girls)
	plot(present$year, boysProportion, type="l")

	# the proportion of boys has decreased in the US over time

#############
#############	Comparing the data set
#############

	# check when boys outnumber girls
	present$boys > present$girls
	
#############
#############	Question 6
#############

	# every year there are more boys than girls

#############
#############	Challenge
#############

	# plot the boy to girl ratio for every year

	boyGirl_ratio <- present$boy / present$girl

	plot(present$year, boyGirl_ratio)

#############
#############	Question 7
#############

	# in the plot:

	# there is initially a decrease in the boy-to-girl ratio,
	# then there is an increase between 1960 and 1970
	# followed by a decrease

#############
#############	Question 8
#############

	difference <- present$boys - present$girls

	diff_df <- data.frame(present$year, difference)

	diff_df

	sort(diff_df$difference, decreasing = TRUE)

	# year with the highest absolute difference between amount of 
	# born boys and girls is 1963




#############
#############	
#############

#
#
##
###
######
#########
############

##################### INTRODUCTION TO DATA

############
#########
######
###
##
#
#

#############
#############	Welcome
#############

	# Load the cdc data frame into the workspace:
	load(url("http://assets.datacamp.com/course/dasi/cdc.Rdata"))

	# this data set tells us about a sample of 20,000 (from a population of 350,000 adults in the US)
	# characteristics include
	    # diet
	    # weekly physical activity
	    # HIV/AIDS status
	    # tobacco use
	    # health coverage


#############
#############	Which variables are you working with?
#############

	# The cdc data frame is already loaded into the workspace

	# Print the names of the variables:

	names(cdc)

#############
#############	Taking a peek at your data
#############

	# The cdc data frame is already loaded into the workspace

	# Print the head and tails of the data frame:

	head(cdc)
	tail(cdc)

#############
#############	Question 1
#############

	# as per tail(cdc)

	# we find 20,000 cases and 9 variables

#############
#############	Question 2	
#############

	cdc$genhlth
	# this is a categorical, ordinal array of data :)

#############
#############	Question 3
#############
	
	cdc$weight
	# apparently a numerical, conitunoues array of data :)

#############
#############	Question 4
#############
	
	cdc$smoke100
	# a categorical (not ordinal) variable

#############
#############	Let's refresh
#############

	# The cdc data frame is already loaded into the workspace.

	# View the head or tail of both the height and the genhlth variables:

	head(cdc$height)
	tail(cdc$height)
	head(cdc$genhlth)
	tail(cdc$genhlth)


	# Assign your sum here:
	sum <- 84941 + 19686

	# Assign your multiplication here:
	mult <- 73 * 51

#############
#############	Turning info into knowledge - numerical data
#############

	# The cdc data frame is already loaded into the workspace

	mean(cdc$weight)
	var(cdc$weight)
	median(cdc$weight)
	summary(cdc$weight)


#############
#############	Turning info into knowledge - categorical data
#############

	# the function table counts the number of times each kind of
	# category occurs in a variable

	# apparently we call this a frequency table

	table(cdc$smoke100)

	#################

	# The cdc data frame is already loaded into the workspace.

	# Create the frequency table here:
	table(cdc$genhlth)

	# Create the relative frequency table here:
	(table(cdc$genhlth))/length(cdc$genhlth)

#############
#############	Creating your first barplot
#############

	# The cdc data frame is already loaded into the workspace.

	# Draw the barplot:

	barplot(table(cdc$smoke100))

#############
#############	Question 5
#############

	summary(cdc$gender)
	# there are 9569 males in the sample

#############
#############	Question 6
#############

	# what proportion of the sample reports being in excellent health?

	summary(cdc$)

#############
#############
#############

#############
#############
#############

#############
#############
#############

#############
#############
#############

#############
#############
#############

#############
#############
#############

#############
#############
#############

#############
#############
#############

#############
#############
#############

#############
#############
#############

#############
#############
#############

#############
#############
#############

#############
#############
#############

#############
#############
#############

#############
#############
#############

#############
#############
#############

#############
#############
#############

#############
#############
#############

#############
#############
#############

#############
#############
#############

#############
#############
#############

#############
#############
#############

#############
#############
#############

#############
#############
#############

#############
#############
#############

#############
#############
#############

#############
#############
#############

#############
#############
#############

#############
#############
#############

#############
#############
#############

#############
#############
#############

#############
#############
#############

#############
#############
#############

#############
#############
#############

#############
#############
#############

#############
#############
#############

#############
#############
#############

#############
#############
#############

#############
#############
#############

#############
#############
#############

#############
#############
#############

#############
#############
#############

#############
#############
#############

#############
#############
#############

#############
#############
#############

#############
#############
#############

#############
#############
#############

#############
#############
#############

#############
#############
#############

#############
#############
#############

#############
#############
#############

#############
#############
#############

#############
#############
#############

#############
#############
#############

#############
#############
#############

#############
#############
#############

#############
#############
#############

#############
#############
#############

#############
#############
#############

#############
#############
#############

#############
#############
#############

#############
#############
#############

#############
#############
#############

#############
#############
#############

#############
#############
#############

#############
#############
#############

#############
#############
#############

#############
#############
#############

#############
#############
#############

#############
#############
#############

#############
#############
#############

#############
#############
#############

#############
#############
#############

#############
#############
#############

#############
#############
#############

#############
#############
#############

#############
#############
#############

#############
#############
#############

#############
#############
#############

#############
#############
#############

#############
#############
#############

#############
#############
#############

#############
#############
#############

#############
#############
#############
