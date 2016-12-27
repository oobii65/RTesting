
library(MASS)

duration <- faithful$eruptions 
breaks <- seq(1.5, 5.5, by=0.5) 
duration.cut <- cut(duration, breaks, right=FALSE) 
duration.freq <- table(duration.cut)

cumfreq0 = c(0, cumsum(duration.freq))

plot(breaks, cumfreq0, main="Old Faithful Eruptions", xlab="Duration minutes", ylab="Cumulative eruptions")
lines(breaks, cumfreq0)

