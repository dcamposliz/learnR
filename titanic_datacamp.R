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

	## - understanding quantities vs proportions
	## - employing row-wise operation by using arg margin=1 in prop.table()

		# How many people in your training set survived the disaster
		# with the Titanic? To see this, you can use the table() command
		# in combination with the $-operator to select a single column
		# of a data frame:

	# Your train and test set are still loaded
	str(train)
	str(test)

	# Passengers that survived vs passengers that passed away
	table(train$Survived)

	# As proportions
	prop.table(table(train$Survived))
	  
	# Males & females that survived vs males & females that passed away
	table(train$Sex, train$Survived)

	# As row-wise proportions
	prop.table(table(train$Sex, train$Survived), margin = 1)

####
####
###### - Does age play a role?
####
####

	## - we are now comparing if age plays a role in survival
	## - we assign boolean values to child / noChild, then do a row-wise comparison

	# Your train and test set are still loaded in
	str(train)
	str(test)

	# Create the column child, and indicate whether child or no child
	train$Child[train$Age == NA] <- NA
	train$Child[train$Age < 18] <- 1
	train$Child[train$Age >= 18] <- 0

	# Two-way comparison
	table(train$Child, train$Survived)

	prop.table(table(train$Child, train$Survived), margin = 1)

####
####
###### - Making your first predictions
####
####

	## - now, because we know that females have over a 50% chance of survival,
	## - and males have less than 50% chance of survival, we create a 'test' prediction
	## - where we assign a 1 for survival to females :)

	# Your train and test set are still loaded in
	str(train)
	str(test)

	# Create a copy of test: test_one
	test_one <- test

	# Initialize a Survived column to 0
	test_one$Survived <- 0

	# Set Survived to 1 if Sex equals "female"
	test_one$Survived[test_one$Sex == "female"] <- 1

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