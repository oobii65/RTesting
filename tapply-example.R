
# http://www.r-tutor.com/

library(MASS)                 # load the MASS package 
school <- painters$School      # the painter schools 
c_school <- school == "C"      # the logical index vector 
c_painters = painters[c_school, ]  # child data set
mean(c_painters$Composition)

# tapply ekvivalent
tapply(painters$Composition, painters$School, mean)

