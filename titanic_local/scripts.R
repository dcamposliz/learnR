
#loading the shit out of rpart :)
library(rpart)

#loading our datasets
train <- read.csv("/Users/dcPro/myProjects/learnR/titanic_local/dataSets/train.csv", header = TRUE)
test <- read.csv("/Users/dcPro/myProjects/learnR/titanic_local/dataSets/test.csv", header = TRUE)
# notice how we need to specify the full path file, what a bitch
#if you are git-cloning this badBoy, you'll have to brew in your own path :D

#checking out the structure of our datasets
str(train)
str(test)

#let's see how many people survived vs died
table(train$Survived)

	# console output:

	#	  0   1 
	#	549 342 

	# this means (out of our sample) 549 people died, 342 survived

#let's do the same thing, but with percentages, or proportions
prop.table(table(train$Survived))

	# console output:

	#	        0         1 
	#	0.6161616 0.3838384

	# this means (out of our sample) ~61.6% people died, ~38.3% survived

survived_Tree <- rpart(Survived ~ Pclass + Sex + Age + SibSp + Parch + Fare + Embarked, data = train, method ="class")

plot(survived_Tree)
text(survived_Tree)

# Load in the packages to create a fancified version of your tree
library(rattle)
library(rpart.plot)
library(RColorBrewer)
	# you may have to install these 'packages', as well as GTK+, using RStudio
	# just go to Tools > Install Packages...

# Time to plot your fancy tree
fancyRpartPlot(survived_Tree)











