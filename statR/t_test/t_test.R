#	tutorial: http://www.r-bloggers.com/two-sample-students-t-test-1/

setwd("/Users/dxc/myProjects/statR")
pdf("t_test.pdf")


a <- c(175, 168, 168, 190, 156, 181, 182, 175, 174, 179)
b <- c(185, 169, 173, 173, 188, 186, 175, 174, 179, 180)


#	t-test

#	to compare the means of two groups
#	under these key assumptions that
#	both samples are: 	
#		- RANDOM
#		- INDEPENDENT
#		- come from NORMALLY-DISTRIBUTED
#		  population with unknown but 
#		  equal variances

a
hist(a)

b
hist(b)

############################################

#		taking F-test using 
#			>	var.test(a,b)

############################################

	var.test(a,b)

#	F test to compare two variances
#	
#		data:  a and b
#		F = 2.1028, num df = 9, denom df = 9, p-value = 0.2834

#		alternative hypothesis: true ratio of variances is not equal to 1

#		95 percent confidence interval:
#		 	0.5223017 8.4657950

#		sample estimates:
#			ratio of variances 
#	          	2.102784

#		CONCLUSIONS:
#
#			We obtained p-value greater than 0.05, then we can assume that 
#			the two variances are homogeneous.
#


#	Indeed we can compare the computed value of F against the TABULATED VALUE of 
#	F for alpha = 0.05, degrees of freedom of numerator = 9, and degrees of 
#	freedom of denominator = 9, using the function qf(p, df.num, df.den):

	qf(0.95, 9, 9)
	#	3.178893

#	----	

#	COMPUTED_F = 2.1028
#	TABULATED_F = 3.178893
	
	#	(COMPUTED_F < TABULATED_F) -----> FAIL TO REJECT THE NULL HYPOTHESIS
	#	therefore we accept the Ho: homogeneity of variances


	#	|    
	#	|    ##
	#	|  #    #
	#	|#         #
	#	|             #
	#	|		         #
	#	|			           #
	#-----------------------------------
	#	NOTE: The F distribution has only one tail, so with a confidence level of 95%,
	#	p = 0.95. Conversely, the t-distribution has two tails, and in the R’s function
	#	qt(p, df) we insert a value p = 0975 when you’re testing a two-tailed alternative 
	#	hypothesis.


############################################
############################################
############################################


############################################

#		taking T-Test using 

#			>	t.test(a,b, var.equal=TRUE, paired=FALSE)

#			Then call the function t.test for homogeneous variances (var.equal = TRUE) 
#			and independent samples (paired = FALSE: you can omit this because the 
#			function works on independent samples by default) in this way:

############################################

	t.test(a,b, var.equal=TRUE, paired=FALSE)

	#	Two Sample t-test

	#	data:  a and b

	#	t = -0.94737, df = 18, p-value = 0.356

	#	alternative hypothesis: true difference in means is not equal to 0

	#	95 percent confidence interval:
	#	-10.93994   4.13994

	#	sample estimates:
		#	mean of x mean of y 
		#		174.8     	178.2

	#	We obtained p-value greater than 0.05, then we can conclude that the averages
	#	of two groups are significantly similar. Indeed the value of t-computed is less 
	#	than the tabulated t-value for 18 degrees of freedom, which in R we can calculate:

	qt(0.975, 18)
	#	2.100922

	#	COMPUTED_T = -0.94737
	#	TABULATED_T = 2.100922

		#	COMPUTED_T < TABULATED_T ---------> FAIL TO REJECT NULL:
		#	This confirms that we can accept the null hypothesis H0 of equality of the means.

############################################

