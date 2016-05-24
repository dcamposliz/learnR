
#
##
#####
########
############

# LEARN 
# 		INTERMEDIATE 
# 						R
# 							MOTHERFUCKER

############
########
#####
##
#


#############################################################


#
#
##
###

# Conditionals and Flow Control

###
##
#
#


####
####
###### - Equality
####
####

	# Comparison of logicals
	TRUE == FALSE

	# Comparison of numerics
	-6 * 14 != 17 - 101

	# Comparison of character strings
	"useR" == "user"

	# Compare a logical with a numeric
	TRUE == 1

####
####
###### - Greater and less than
####
####

	# Comparison of numerics
	-6 * 5 + 2 >= -10 +1

	# Comparison of character strings
	"raining" <= "raining dogs"

	# Comparison of logicals
	TRUE > FALSE

####
####
###### - Compare vectors
####
####

	# The linkedin and facebook vectors have already been created for you
	linkedin <- c(16, 9, 13, 5, 2, 17, 14)
	facebook <- c(17, 7, 5, 16, 8, 13, 14)

	# Popular days
	linkedin > 15
	facebook > 15

	# Quiet days
	linkedin <= 5
	facebook <= 5

	# LinkedIn more popular than Facebook
	linkedin > facebook

####
####
###### - Compare matrices
####
####

	# The social data has been created for you
	linkedin <- c(16, 9, 13, 5, 2, 17, 14)
	facebook <- c(17, 7, 5, 16, 8, 13, 14)
	views <- matrix(c(linkedin, facebook), nrow = 2, byrow = TRUE)

	views

	# When does views equal 13?
	views == 13

	# When is views less than or equal to 14?
	views <= 14

	# How often does facebook equal or exceed linkedin times two?
	sum (facebook >= (linkedin * 2))

####
####
###### - LOGICAL OPERATORS
####
####

	# learning about AND (&), OR (|), and NOT (!=)

	# we can run logical operators on vectors and matrices as well

	# & vs && - double ampersand only evaluates first element of vector
	# | vs || - double pipe only evaluates first element of vector

####
####
###### - & and |
####
####

	# The linkedin and last variable are already defined for you
	linkedin <- c(16, 9, 13, 5, 2, 17, 14)
	last <- tail(linkedin, 1)

	# Is last under 5 or above 10?
	last < 5 | last > 10

	# Is last between 15 (exclusive) and 20 (inclusive)?
	last > 15 & last <= 20

	# Is last between 0 and 5 or between 10 and 15?
	(last > 0 & last < 5) | (last > 10 & last < 15)

####
####
###### - & and | (2)
####
####

# The social data (linkedin, facebook, views) has been created for you

		# linkedin exceeds 10 but facebook below 10

		linkedin > 10 & facebook < 10

		# When were one or both visited at least 12 times?

		linkedin >= 12 | facebook >= 12

		# When is views between 11 (exclusive) and 14 (inclusive)?

		views > 11 & views <= 14

####
####
###### - Reverse the result:!
####
####
		x <- 5
		y <- 7
		!(!(x < 4) & !!!(y > 12))


####
####
###### - Blend it all together - commented out because li_df has not been declared
####
####
		# li_df is pre-loaded in your workspace
		#li_df
		# Select the second column, named day2, from li_df: second
		#second <- li_df$day2
		#second
		# Build a logical vector, TRUE if value in second is extreme: extremes
		#extremes <- (second > 25 | second < 5)
		# Count the number of TRUEs in extremes
		#sum(extremes)

	# Solve it with a one-liner


####
####
###### - Conditional Statements
####
####

		# learning about if else statements



####
####
###### - The if statement
####
####

	# Variables related to your last day of recordings
	medium <- "LinkedIn"
	num_views <- 14

	# Examine the if statement for medium
	if (medium == "LinkedIn") {
	  print("Showing LinkedIn information")
	}

	# Write the if statement for num_views
	if(num_views > 15) {
	    print("You're popular!")
	}


####
####
###### - Add an else
####
####

	# Variables related to your last day of recordings
	medium <- "LinkedIn"
	num_views <- 14

	# Control structure for medium
	if (medium == "LinkedIn") {
	  print("Showing LinkedIn information")
	} else {
	    print("Unknown medium")
	}



	# Control structure for num_views
	if (num_views > 15) {
	  print("You're popular!")
	} else {
	    print("Try to be more visible!")
	}

####
####
###### - Customize further: else if
####
####

	# Variables related to your last day of recordings
	medium <- "LinkedIn"
	num_views <- 14

	# Control structure for medium
	if (medium == "LinkedIn") {
	  print("Showing LinkedIn information")
	} else if (medium == "Facebook") {
	  # Add code to print correct string when condition is TRUE
	    print("Showing Facebook information")
	} else {
	  print("Unknown medium")
	}

	# Control structure for num_views
	if (num_views > 15) {
	  print("You're popular!")
	} else if (num_views <= 15 & num_views > 10) {
	  # Add code to print correct string when condition is TRUE
	    print("Your number of views is average")
	} else {
	  print("Try to be more visible!")
	}

####
####
###### - Else if 2.0
####
####

	# something on the console

####
####
###### - Take control!
####
####

	# Variables related to your last day of recordings
	li <- 15
	fb <- 9

	# Code the control-flow construct
	if (li > 15 & fb > 15) {
	  sms <- 2 * (li + fb)
	} else if (li < 10 & fb < 10) {
	  sms <- 0.5 * (li + fb)
	} else {
	  sms <- li + fb
	}

	# Print the resulting sms to the console
	print(sms)

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

