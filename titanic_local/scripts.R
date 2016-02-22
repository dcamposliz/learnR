
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

table(train$Survived)



