#	install.packages("MASS")

library(MASS)
painters

painters$School

school <- painters$School

table(school)

school.freq <- table(school)

cbind(school.freq)


#	Exercise
#	-	Find the frequency distribution of the composition scores in painters.
#	-	Find programmatically the school that has the most painters.