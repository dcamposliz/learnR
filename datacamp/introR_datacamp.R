#
#
##
###

# learn R, motherfucker

###
##
#
#

pdf("introR_datacamp.pdf")


#	https://campus.datacamp.com/courses/free-introduction-to-r/chapter-1-intro-to-basics-1?ex=2

##
##
##
##

# Calculate 3 + 4
3 + 4

# Calculate 6 + 12
6 + 12

# An addition
5 + 5 

# A subtraction
5 - 5 

# A multiplication
3 * 5

 # A division
(5 + 5)/2 

# Exponentiation
2^5

# Modulo
28 %% 6

# Assign the value 42 to 'x'
x <- 42

# Print out the value of the variable 'x'
x

# Assign the value 5 to the variable called 'my_apples'
my_apples <- 5

# Print out the value of the variable 'my_apples'
my_apples

# Assign a value to the variables called 'my_apples' and 'my_oranges'
my_apples <- 5
my_oranges <- 6

# Add these two variables together and print the result
my_apples + my_oranges

# Create the variable 'my_fruit'
my_fruit <- my_apples + my_oranges
my_fruit

# Assign a value to the variable called 'my_apples'
my_apples <- 5 

# Print out the value of 'my_apples'
my_apples       

# Assign a value to the variable 'my_oranges' and print it out
my_oranges <- 6
my_oranges 

# New variable that contains the total amount of fruit
my_fruit <- my_apples + my_oranges 
my_fruit

# What is the answer to the universe?
my_numeric <- 42

# The quotation marks indicate that the variable is of type character
my_character <- "forty-two"

my_logical <- FALSE

# Declare variables of different types
my_numeric <- 42
my_character <- "forty-two"
my_logical <- FALSE 

# Check which type these variables have:
class(my_numeric)
class(my_character)
class(my_logical)

#
#
##
###

# VECTORS, motherfucker

###
##
#
#

# Define the variable 'Vegas'

Vegas <- "Here we go!"

# we create vectors with c(v1, ... , vn)
# vectors are JUST fucking arrays, give me a break

numeric_vector <- c(1, 10, 49)
character_vector <- c("a", "b", "c")
# Complete the code for 'boolean_vector'
boolean_vector <- c(TRUE, FALSE, TRUE)

##

# Poker winnings from Monday to Friday
poker_vector <- c(140, -50, 20, -120, 240)

# Roulette winnings from Monday to Friday
roulette_vector <-  c(-24, -50, 100, -350, 10)

## NAMING VECTORS - this seems to be analogous to objects in JS

# Poker winnings from Monday to Friday
poker_vector <- c(140, -50, 20, -120, 240)

# Roulette winnings from Monday to Friday
roulette_vector <- c(-24, -50, 100, -350, 10)

# Add your code here

names(poker_vector) <- c("Monday","Tuesday","Wednesday","Thursday","Friday")
names(roulette_vector) <- c("Monday","Tuesday","Wednesday","Thursday","Friday")

##

# Poker winnings from Monday to Friday
poker_vector <- c(140, -50, 20, -120, 240)

# Roulette winnings from Monday to Friday
roulette_vector <- c(-24, -50, 100, -350, 10)

# Create the variable 'days_vector'
days_vector <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")
 
#Assign the names of the day to 'roulette_vector' and 'poker_vector'
names(poker_vector) <- days_vector
names(roulette_vector) <- days_vector

##

A_vector <- c(1, 2, 3)
B_vector <- c(4, 5, 6)

# Take the sum of 'A_vector' and 'B_vector'
total_vector <- A_vector + B_vector
  
# Print 'total_vector' to the console
total_vector

##

# Poker winnings from Monday to Friday:
poker_vector <- c(140, -50, 20, -120, 240)

# Roulette winnings from Monday to Friday:
roulette_vector <- c(-24, -50, 100, -350, 10)

# Give names to both 'poker_vector' and 'roulette_vector'
days_vector <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")
names(poker_vector) <- days_vector
names(roulette_vector) <- days_vector

# Up to you now:
total_daily <- poker_vector + roulette_vector

##

# Poker winnings from Monday to Friday
poker_vector <- c(140, -50, 20, -120, 240)

# Roulette winnings from Monday to Friday
roulette_vector <- c(-24, -50, 100, -350, 10)

# Give names to both 'poker_vector' and 'roulette_vector'
days_vector <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")
names(roulette_vector) <- days_vector
names(poker_vector) <- days_vector

# Total winnings with poker
total_poker <- sum(poker_vector)

# Up to you now:
total_roulette <- sum(roulette_vector)
total_week <- total_poker + total_roulette

##

# Poker winnings from Monday to Friday
poker_vector <- c(140, -50, 20, -120, 240)

# Roulette winnings from Monday to Friday
roulette_vector <- c(-24, -50, 100, -350, 10)

# Give names to both 'poker_vector' and 'roulette_vector'
days_vector <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")
names(roulette_vector) <- days_vector
names(poker_vector) <- days_vector

# Calculate total gains for poker and roulette
total_poker <- sum(poker_vector)
total_roulette <- sum(roulette_vector)

# Check if you realized higher total gains in poker than in roulette 
answer <- total_poker > total_roulette

##

# Poker winnings from Monday to Friday
poker_vector <- c(140, -50, 20, -120, 240)

# Roulette winnings from Monday to Friday
roulette_vector <- c(-24, -50, 100, -350, 10)

# Give names to both 'poker_vector' and 'roulette_vector'
days_vector <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")
names(roulette_vector) <- days_vector
names(poker_vector) <- days_vector

# Define a new variable based on a selection
poker_wednesday <- poker_vector[3]

##

# Poker winnings from Monday to Friday
poker_vector <- c(140, -50, 20, -120, 240)

# Roulette winnings from Monday to Friday
roulette_vector <- c(-24, -50, 100, -350, 10)

# Give names to both 'poker_vector' and 'roulette_vector'
days_vector <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")
names(roulette_vector) <- days_vector
names(poker_vector) <- days_vector

# Define a new variable based on a selection
poker_midweek <- poker_vector[c(2,3,4)]

##

# Poker winnings from Monday to Friday
poker_vector <- c(140, -50, 20, -120, 240)

# Roulette winnings from Monday to Friday
roulette_vector <- c(-24, -50, 100, -350, 10)

# Give names to both 'poker_vector' and 'roulette_vector'
days_vector <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")
names(roulette_vector) <- days_vector
names(poker_vector) <- days_vector

# Define a new variable based on a selection
roulette_selection_vector <- roulette_vector[c(2:5)]

##

# Poker winnings from Monday to Friday
poker_vector <- c(140, -50, 20, -120, 240)

# Roulette winnings from Monday to Friday
roulette_vector <- c(-24, -50, 100, -350, 10)

# Give names to both 'poker_vector' and 'roulette_vector'
days_vector <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")
names(roulette_vector) <- days_vector
names(poker_vector) <- days_vector

them_relevant_days_mang <- poker_vector[c("Monday","Tuesday","Wednesday")]
average_midweek_gain <- mean(them_relevant_days_mang)

##

# Poker winnings from Monday to Friday
poker_vector <- c(140, -50, 20, -120, 240)

# Roulette winnings from Monday to Friday
roulette_vector <- c(-24, -50, 100, -350, 10)

# Give names to both 'poker_vector' and 'roulette_vector'
days_vector <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")
names(roulette_vector) <- days_vector
names(poker_vector) <- days_vector

# What days of the week did you make money on poker?
selection_vector <- (poker_vector > 0)

##

# Poker winnings from Monday to Friday
poker_vector <- c(140, -50, 20, -120, 240)

# Roulette winnings from Monday to Friday
roulette_vector <- c(-24, -50, 100, -350, 10)

# Give names to both 'poker_vector' and 'roulette_vector'
days_vector <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")
names(roulette_vector) <- days_vector
names(poker_vector) <- days_vector

# What days of the week did you make money on poker?
selection_vector <- poker_vector > 0

# Select from poker_vector these days
poker_winning_days <- poker_vector[selection_vector]

##

# Poker winnings from Monday to Friday
poker_vector <- c(140, -50, 20, -120, 240)

# Roulette winnings from Monday to Friday
roulette_vector <- c(-24, -50, 100, -350, 10)

# Give names to both 'poker_vector' and 'roulette_vector'
days_vector <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")
names(roulette_vector) <- days_vector
names(poker_vector) <- days_vector

# What days of the week did you make money on roulette?
selection_vector <- roulette_vector > 0

# Select from roulette_vector these days
roulette_winning_days <- roulette_vector[selection_vector]

#
#
##
###

# MATRICES, motherfucker

###
##
#
#

# Construction of a matrix with 3 rows that contain the numbers 1 up to 9

		matrix(1:9, byrow = TRUE, nrow = 3)

	##

# Box office Star Wars: In Millions!
	# The first element: US, the second element: Non-US 
	new_hope <- c(460.998, 314.4)
	empire_strikes <- c(290.475, 247.900)
	return_jedi <- c(309.306, 165.8)

	dataVector <- c(new_hope, empire_strikes, return_jedi)

	# Add your code below to Construct matrix
	star_wars_matrix <- matrix(dataVector, byrow = TRUE, nrow = 3)
	star_wars_matrix

	##

# Box office Star Wars: In Millions (!) 
	# First element: US, Second element: non-US 
	new_hope <- c(460.998, 314.4)
	empire_strikes <- c(290.475, 247.900)
	return_jedi <- c(309.306, 165.8)

	# Construct matrix
	star_wars_matrix <- matrix(c(new_hope, empire_strikes, return_jedi), nrow = 3, byrow = TRUE)
	star_wars_matrix
	# Add your code here such that rows and columns of star_wars_matrix have a name!

	rownames(star_wars_matrix) <- c("A New Hope", "The Empire Strikes Back", "Return of the Jedi")
	colnames(star_wars_matrix) <- c("US","non-US")

	##

# Box office Star Wars: In Millions (!) 
	# Construct matrix 
	box_office_all <- c(461, 314.4, 290.5, 247.9, 309.3, 165.8)
	movie_names <- c("A New Hope","The Empire Strikes Back","Return of the Jedi")
	col_titles <- c("US","non-US")
	star_wars_matrix <- matrix(box_office_all, nrow=3, byrow = TRUE, dimnames = list(movie_names, col_titles))

	# Your code here
	worldwide_vector <- rowSums(star_wars_matrix)
	worldwide_vector

	##

# Box office Star Wars: In Millions (!) 
	# Construct matrix
	box_office_all <- c(461, 314.4, 290.5, 247.9, 309.3, 165.8)
	movie_names <- c("A New Hope","The Empire Strikes Back","Return of the Jedi")
	col_titles <- c("US","non-US")
	star_wars_matrix <- matrix(box_office_all, nrow = 3, byrow = TRUE, dimnames = list(movie_names, col_titles))

	# The worldwide box office figures
	worldwide_vector <- rowSums(star_wars_matrix)

	# Bind the new variable worldwide_vector as a column to star_wars_matrix
	all_wars_matrix <- cbind(star_wars_matrix, worldwide_vector)
	all_wars_matrix

	##

	# Matrix that contains the first trilogy box office
	star_wars_matrix  

	# Matrix that contains the second trilogy box office
	star_wars_matrix2 

	# Combine both Star Wars trilogies in one matrix
	all_wars_matrix <- rbind(star_wars_matrix, star_wars_matrix2)

	##

	# Print box office Star Wars
	all_wars_matrix

	# Total revenue for US and non-US
	total_revenue_vector <- colSums(all_wars_matrix)

	##

# Box office Star Wars: In Millions (!) 
	# Construct matrix 
	box_office_all <- c(461, 314.4, 290.5, 247.9, 309.3, 165.8)
	movie_names <- c("A New Hope","The Empire Strikes Back","Return of the Jedi")
	col_titles <- c("US","non-US")
	star_wars_matrix <- matrix(box_office_all, nrow = 3, byrow = TRUE, dimnames = list(movie_names, col_titles))

	# Print the star_wars_matrix to the console
	star_wars_matrix 

	# Average non-US revenue per movie
	non_us_all  <- mean(star_wars_matrix[,2])
	non_us_all
	  
	# Average non-US revenue of first two movies
	non_us_some <- mean(star_wars_matrix[1:2,2])
	non_us_some

##

# Box office Star Wars: In Millions (!) 
	# Construct matrix
	box_office_all <- c(461, 314.4, 290.5, 247.9, 309.3, 165.8)
	movie_names <- c("A New Hope","The Empire Strikes Back","Return of the Jedi")
	col_titles <- c("US","non-US")
	star_wars_matrix <- matrix(box_office_all, nrow = 3, byrow = TRUE, dimnames = list(movie_names, col_titles))

	# Estimation of visitors
	visitors <- star_wars_matrix/5
	  
	# Print the estimate to the console
	visitors

##

# Box office Star Wars: In Millions (!) 
	# Construct matrix 
	box_office_all <- c(461, 314.4, 290.5, 247.9, 309.3, 165.8)
	movie_names <- c("A New Hope","The Empire Strikes Back","Return of the Jedi")
	col_titles <- c("US","non-US")
	star_wars_matrix <- matrix(box_office_all, nrow = 3, byrow = TRUE, dimnames = list(movie_names, col_titles))
	ticket_prices_matrix <- matrix(c(5, 5, 6, 6, 7, 7), nrow = 3, byrow = TRUE, dimnames = list(movie_names, col_titles)) 

	star_wars_matrix

	# Estimated number of visitors
	visitors <- star_wars_matrix / ticket_prices_matrix

	# Average number of US visitors
	average_us_visitors <- mean(star_wars_matrix[,1] / ticket_prices_matrix[,1])

	# Average number of non-US visitors
	average_non_us_visitors <- mean(star_wars_matrix[,2] / ticket_prices_matrix[,2])

#
#
##
###

# FACTORS, motherfucker

###
##
#
#

# Assign to the variable 'theory' what this chapter is about!

theory <- "R uses factors for categorical variables!"

##

gender_vector <- c("Male", "Female", "Female", "Male", "Male")

# Define factor_gender_vector using 'factor()'
factor_gender_vector <- factor(gender_vector)

factor_gender_vector

##
## What's a factor and why would you use it? (3)
##

	# 2 types of factors
	# nominal factors - categories that ARE NOT be ordered, like animals
	# ordinal factors - categories that ARE ordered, like numbers

	animals_vector <- c("Elephant", "Giraffe", "Donkey", "Horse")
	temperature_vector <- c("High", "Low", "High","Low", "Medium")

	factor_animals_vector <- factor(animals_vector)
	factor_animals_vector
	factor_temperature_vector <- factor(temperature_vector, order = TRUE, levels = c("Low", "Medium", "High"))
	factor_temperature_vector

	##

	# Code to form the factor vector
	survey_vector <- c("M", "F", "F", "M", "M")
	factor_survey_vector <- factor(survey_vector)

	# Specify the levels of 'factor_survey_vector'
	levels(factor_survey_vector) <- c("Female","Male")

	factor_survey_vector

	##

	survey_vector <- c("M", "F", "F", "M", "M")
	factor_survey_vector <- factor(survey_vector)
	levels(factor_survey_vector) <- c("Female", "Male")
	factor_survey_vector

	# Type your code here for 'survey_vector'
	summary(survey_vector)

	# Type your code here for 'factor_survey_vector'
	summary(factor_survey_vector)

##
## Battle of the sexes
##

	survey_vector <- c("M", "F", "F", "M", "M")
	factor_survey_vector <- factor(survey_vector)
	levels(factor_survey_vector) <- c("Female", "Male")

	# Male
	factor_survey_vector[1] 
	# Female
	factor_survey_vector[2] 
	# Battle of the sexes: Male 'larger' than female?
	factor_survey_vector[1] > factor_survey_vector[2] 

##
## Ordered factors
##

	# Create 'speed_vector'
	speed_vector <- c("Fast","Slow","Slow","Fast","Ultra-fast")

##
## Ordered factors (2)
##

	## factor() function has attributes that need to be specified

	speed_vector <- c("Fast", "Slow", "Slow", "Fast", "Ultra-fast") 

	# Add your code below
	speed_vector_levels <- c("Slow", "Fast", "Ultra-fast")
	factor_speed_vector <- factor(speed_vector, ordered = TRUE, levels = speed_vector_levels)

	# Print
	factor_speed_vector

	# R prints automagically in the right order
	summary(factor_speed_vector) 

##
## Comparing ordered factors
##

	speed_vector <- c("Fast", "Slow", "Slow", "Fast", "Ultra-fast")
	factor_speed_vector <- factor(speed_vector, ordered = TRUE, levels = c("Slow", "Fast", "Ultra-fast"))

	# Your code below
	compare_them <- factor_speed_vector[2] > factor_speed_vector[5]

	# Is data analyst 2 faster than data analyst 5?
	compare_them

#
#
##
###

# DATA FRAMES, motherfucker

###
##
#
#

	# it seems as though a data frame is similar to a matrix, 
	# except that instead of just numbers, it may contain other
	# data types, like booleans, strings, and numbers alike.
	# typically,  these datatypes will be bucketed by column

##
## What's a data frame?
##

	mtcars # Built-in R data set stored in a data frame

##
## Quick, have a look at your data set
##

	# head() shows only the first observations of a data set
	# tail() shows the last observations of a data set

##
## Have a look at the structure
##

	# function str() shows the structure of data set

	# Investigate the structure of the mtcars data set to get started!
	str(mtcars)

##
## Creating a data frame
##

	planets <- c("Mercury", "Venus", "Earth", "Mars", "Jupiter", "Saturn", "Uranus", "Neptune");
	type <- c("Terrestrial planet", "Terrestrial planet", "Terrestrial planet", "Terrestrial planet", "Gas giant", "Gas giant", "Gas giant", "Gas giant")
	diameter <- c(0.382, 0.949, 1, 0.532, 11.209, 9.449, 4.007, 3.883); 
	rotation <- c(58.64, -243.02, 1, 1.03, 0.41, 0.43, -0.72, 0.67);
	rings <- c(FALSE, FALSE, FALSE, FALSE, TRUE, TRUE, TRUE, TRUE);

	# Create the data frame:
	planets_df  <- data.frame(planets, type, diameter, rotation, rings)
	planets_df

	# this is our first data frame - exciting shit

##
## Creating a data frame (2)
##

	# let's check out the structure of our new data frame

	# Check the structure of 'planets_df'
	str(planets_df)

##
## Selection of data frame elements
##

	# you can select elements, or data, from data frames
	# for example, myDataFrame[1,2] selects ROW_1, COLUMN_2

	# so we thing:
	# row, column
	# row, column
	# row, column
	# row, column
	# row, column
	# row, column

	# The 'planets_df' data frame from the previous exercise is pre-loaded

	# All data from the first three planets
	closest_planets_df <- data.frame(planets_df[1:3,])

	# All data from the last three planets
	furthest_planets_df <- data.frame(planets_df[6:8,])

	# cool, it seems as though we do not need to run the data.frame() method
	# because the data is already of a certain format, whether it be a data-frame,
	# or a fucking verctor :D

	# that is to say, we could have run this instead:

	closest_planets_df <- planets_df[1:3,]
	furthest_planets_df <- planets_df[6:8,]	

	# Have a look:
	closest_planets_df
	furthest_planets_df	

##
## Selection of data frame elements (2)
##

	# just like in objects in javascript, we can call for a specific
	# name-value pair value in an array, or object

	# The 'planets_df' data frame from the previous exercise is pre-loaded

	# Do selection on both rows and columns
	furthest_planets_diameter <- planets_df[3:8,"diameter"]

	# I am a bit confused about whether or not I need to use the function
	# data.frame() to 'select' a subset of another dataframe given 
	# parameters row / column

##
## Only planets with rings
##

	# dollar sign $ has a trick up the sleves, mofucka - you can basically
	# select a column using $ instead of using DF[x,y] notation

	# 'planets_df' is pre-loaded in your workspace

	# Create the rings_vector
	rings_vector <- planets_df$rings

####
####
###### - Only planets with rings (2)
####
####

	# THIS ONE IS HARD / INTERESTING

		# 'planets_df' and 'rings_vector' are pre-loaded in your workspace

		# Select the information on planets with rings:
		planets_with_rings_df <- planets_df[rings_vector,]

		# this vector is selecting only the rows in which the name-value pair is
		# rings : TRUE
		# and output all associated columns as well as corresponding values

		planets_with_rings_df		# outputting the yielded data frame, for shits and giggles

			# QUESTION

				# How does R know to apply rings_vector to the rings column? What if there was another column of logicals e.g. life.

			# ANSWER

				# The 'rings_vector' is not applied to the rings column, it is applied to the rows of the data frame. As you can see, 'rings_vector' first contains 4 times FALSE, and 4 times TRUE afterwards. This means the first four rows of the data frame are NOT selected, and the last 4 are.
				# Notice how 'rings_vector' corresponds with the 'rings' column in the 'planets_df' data frame. You could also use this column as row indices: 'planets_df[planets_df$rings, ]'. If there was a life column in the data frame with logicals, you could use this as row indices to select the rows for which the 'life' value is TRUE.

####
####
###### - Only planets with rings but shorter
####
####

	# NOW we are talking !!

	# 'planets_df' is pre-loaded in your workspace

	# Planets that are smaller than planet Earth:
	small_planets_df  <- subset(planets_df, subset = diameter < 1)

####
####
###### - Sorting
####
####

	# learning the order() method to sort some shit !

	# Just play around with the order function in the console to see how it works!

	# lets declare a vector variable, namely, v

	v <- c(1,2,3,4,5,6,7,78,5,4554,23534,534,534,534,534,53,524,54,35324,343465345)

	order(v)

	v[order(v)]


####
####
###### - Sorting your data frame
####
####

	## another hard one

	# 'planets_df' is pre-loaded in your workspace
	planets_df

	# What is the correct ordering based on the planets_df$diameter variable?

	positions <- order(planets_df$diameter, decreasing = TRUE)
	positions

	largest_first_df <- planets_df[positions,]
	largest_first_df

	# as always, simpler than we anticipated :)

##
##
##
##

# OKAY, quick recap

	# VECTORS (one dimensional array): can hold numeric, character or logical values. The elements in one vector all have the same datatype.

	# MATRICES (two dimensional array): can hold numeric, character or logical values. The elements in one matrix all have the same datatype.

	# DATA FRAMES (two-dimensional objects): can hold numeric, character or logical values. Within a column all elements have the same data type, but different columns can be of different data type.

#
#
##
###

# LISTS, motherfucker

###
##
#
#


####
####
###### - Lists, why would you need them?
####
####

	# nothing interesting here


####
####
###### - Lists, why would you need them? (2)
####
####

	# A list in R is similar to your to-do list at work or school: the different items on that list most likely differ in length, characteristic, type of activity that has to do be done, …

	# A list in R allows you to gather a variety of objects under one name (that is, the name of the list) in an ordered way. These objects can be matrices, vectors, data frames, even other lists, etc. It is not even required that these objects are related to each other. Just like your to-do list :-).

	# Maybe you can even say that a list is a kind of super data type ;-)


####
####
###### - Creating a list
####
####

	# Vector with numerics from 1 up to 10
	my_vector <- 1:10 
	# Matrix with numerics from 1 up to 9
	my_matrix <- matrix(1:9, ncol = 3)
	# First 10 elements of the built-in data frame 'mtcars'
	my_df <- mtcars[1:10,]

	# Construct list with these different elements:
	my_list <- list(my_vector, my_matrix, my_df)

####
####
###### - Creating a named list
####
####

	# Vector with numerics from 1 up to 10
	my_vector <- 1:10 
	# Matrix with numerics from 1 up to 9
	my_matrix <- matrix(1:9, ncol = 3)
	# First 10 elements of the built-in data frame 'mtcars'
	my_df <- mtcars[1:10,]

	# Construct 'my_list' with these different elements:
	my_list <- list("vec" = my_vector, "mat" = my_matrix, "df" = my_df)

	# Print 'my_list' to the console
	my_list

####
####
###### - Creating a named list (2)
####
####

	# The vectors 'actors' and 'reviews' are pre-loaded in the workspace

	# Create the list 'shining_list'
	shining_list <- list("moviename" = "The Shining", "actors" = actors, "reviews" = reviews)

	shining_list


####
####
###### - Lists, why would you need them?
####
####

	# also simpler, as expected

	# 'shining_list' is already pre-loaded in the workspace

	# Define 'last_actor'
	last_actor <- tail(shining_list$actors, n=1)

	last_actor

# Define 'second_review'
second_review <- shining_list$reviews[2,]
second_review


####
####
###### - Adding more movie information to the list
####
####



	# 'shining_list', the list containing moviename, actors and reviews, is pre-loaded in the workspace

	# We forgot something; add the year to shining_list
	shining_list_full <- c(shining_list,"year" = 1980 )

	# Have a look at shining_list_full
	shining_list_full
	str(shining_list_full)

	# BOOM! last exercise :)
