#
##
#####
########
############

# INTRO TO MACHINE LEARNING - TITANIC THINGS

############
########
#####
##
#

####
####
###### - intro to datacamp
####
####

	# Calculate 3 + 4
	3 + 4

	# Calculate 6 + 12
	6 + 12

####
####
###### - set sail - loading data sets
####
####

	# Import the training set: train
	train_url <- "http://s3.amazonaws.com/assets.datacamp.com/course/Kaggle/train.csv"
	train <- read.csv(train_url)
	  
	# Import the testing set: test
	test_url <- "http://s3.amazonaws.com/assets.datacamp.com/course/Kaggle/test.csv"
	test <-  read.csv(test_url)
	  
	# Print train and test to the console
	train
	test

####
####
###### - Understanding your data
####
####

	str(train)
	str(test)

####
####
###### - Rose vs Jack, or Female vs Male
####
####
	
	# How many people in your training set survived the disaster
	# with the Titanic? To see this, you can use the table() command
	# in combination with the $-operator to select a single column
	# of a data frame:

	# absolute numbers
	table(train$Survived) 

	# percentages
	prop.table(table(train$Survived))

	

####
####
###### - 
####
####



####
####
###### - 
####
####



####
####
###### - 
####
####



####
####
###### - 
####
####



####
####
###### - 
####
####



####
####
###### - 
####
####



####
####
###### - 
####
####



####
####
###### - 
####
####



####
####
###### - 
####
####



####
####
###### - 
####
####



####
####
###### - 
####
####



####
####
###### - 
####
####