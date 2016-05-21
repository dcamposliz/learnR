
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

