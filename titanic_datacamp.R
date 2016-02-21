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

############

# CHAPTER 1 - Raising anchor

############

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



############

# CHAPTER 2 - From icebergs to trees

############

####
####
###### - Intro to decision trees
####
####

	# MY NOTES __________________
	# so, decision-trees are awesome because they slice and dice data for you.
	# the decision-tree algorithm starts at the root-node
	# scans all the variables for the best ones to split on
	# then it goes down by one level
	# then there is prediction at the end of it
	# this reminds me of game theory things + regression analysis
	# how does the algorithm work?

	# we access this decision-tree algorithm in the rpart library:
	library(rpart)

####
####
###### - Creating your first decision tree
####
####

	# You will use the the rpart() function inside of the rpart package to 
	# build your first decision tree. The rpart() function takes multiple 
	# arguments (type in ?rpart and discover it yourself):

	# formula: The variable of interest, and the variables used for prediction. 
	# You write this down as formula = Survived ~ Sex + Age.
	# data: The data set used to build the decision tree (here train).
	# method: Type of prediction you want. Here you predict a categorical variable 
	# (dead or alive), so you're classifying: method = "class".
	# So to summarize, your code would look something like this:

	# my_tree <- rpart(Survived ~ Sex + Age, 
	#                  data = train, 
	#                  method ="class")
	# To visualize the resulting decision tree, 
	# you can use the functions plot() and text():

	# plot(my_tree)
	# text(my_tree)
	# If you tried out the above commands, 
	# you probably noticed the resulting graphs are not that informative. 
	# Luckily, R has packages to make these plots 
	# way fancier: rattle, rpart.plot, and RColorBrewer.

	# Your train and test set are still loaded in
	str(train)
	str(test)


	# Build the decision tree
	my_tree_two <- rpart(Survived ~ Pclass + Sex + Age + SibSp + Parch + Fare + Embarked, data = train, method ="class")

	# Visualize the decision tree using plot() and text()
	plot(my_tree_two)
	text(my_tree_two)

	# Load in the packages to create a fancified version of your tree
	library(rattle)
	library(rpart.plot)
	library(RColorBrewer)

	# Time to plot your fancy tree
	fancyRpartPlot(my_tree_two)

	## THIS SHIT IS STILL WRONG

####
####
###### - Interpreting your decision tree
####
####

	# based on the answer from the decision-tree

	# we find that the random variables with largest coefficients are:

		# sex
		# age
		# passenger class
		# number of siblings/spouses aboard
		# fare
		
####
####
###### - Predict and submit to Kaggle
####
####

	# Your train and test set are still loaded in
	str(train)
	str(test)

	# Make your prediction using the test set
		# my_tree_two (arg) is the rpart data.frame that it takes in
		# test (arg), I am not entirely sure what this is doing here, except map this onto the test data set?
		# type="class" (arg) defines the type of data result we extract from the predict function
	my_prediction <- predict(my_tree_two, test, type = "class")
	my_prediction

	# Create a data frame with two columns: PassengerId & Survived. Survived contains your predictions
	my_solution <- data.frame(PassengerId = test$PassengerId, Survived = my_prediction)
	my_solution

	# Check that your data frame has 418 entries
	nrow(my_solution)

	# Write your solution to a csv file with the name my_solution.csv
	write.csv(my_solution, file = "my_solution.csv", row.names=FALSE)

####
####
###### - Overfitting, the iceberg of decision trees
####
####

	# Your train and test set are still loaded in
	str(train)
	str(test)

	# as it relates to rpart, we can get even fancier with our predictions
	# we have two other parameters
	    # cp - determines when splitting of decision tree stops
	    # minsplit - monitors the amount of observations in a bucket, 

	# Create a new decision tree my_tree_three
	my_tree_three <- rpart(Survived ~ Pclass + Sex + Age + SibSp + Parch + Fare + Embarked, data = train, method = "class", control = rpart.control(cp = 0, minsplit = 50))

	  
	# Visualize your new decision tree
	fancyRpartPlot(my_tree_three)

####
####
###### - Re-engineering our Titanic data set
####
####

	# Data Science is an art that benefits from a human element. Enter feature engineering: creatively engineering your own features by combining the different existing variables.

	# Your train and test set are still loaded in
	str(train)
	str(test)

	# create a new train set with the new variable

	# through our intuition we 'determine' that larger families may have a larger chance of drowning
	# and family size is a function of number of siblings and spouces + number of parents and children
	# so we make a new variable, called family size
	train_two <- train
	train_two$family_size <- train$SibSp + train$Parch + 1

	# Create a new decision tree my_tree_three
	my_tree_four <- rpart(Survived ~ Pclass + Sex + Age + SibSp + Parch + Fare + Embarked + family_size, data = train_two, method = "class", control = rpart.control(cp = 0, minsplit = 50))
	  
	# Visualize your new decision tree
	fancyRpartPlot(my_tree_four)

####
####
###### - Passenger Title and survival rate
####
####

	# train_new and test_new are available in the workspace
	str(train_new)
	str(test_new)

	# Create a new model `my_tree_five`
	my_tree_five <- rpart(Survived ~ Pclass + Sex + Age + SibSp + Parch + Fare + Embarked + Title, data = train_new, method = "class")

	    # once again, with rpart we predict an 'endogenous' variable
	    # so we throw the 'exogenous'
	    # and these arguments: 

	# Visualize your new decision tree
	fancyRpartPlot(my_tree_five)

	# Make your prediction using `my_tree_five` and `test_new`
	my_prediction <- predict(my_tree_five, test_new, type = "class")

	# Create a data frame with two columns: PassengerId & Survived. Survived contains your predictions
	my_solution <- data.frame(PassengerId = test_new$PassengerId, Survived = my_prediction)

	# Write your solution away to a csv file with the name my_solution.csv
	write.csv(my_solution, file = "my_solution.csv", row.names = FALSE)

############

# CHAPTER 3 - WHAT IS A RANDOM FOREST

############

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