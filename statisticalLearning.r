library(gtools)

sourceValue = "qiwi{xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx}"
len = nchar(sourceValue)
theVector = strsplit(sourceValue, '')[[1]]
numericVector <- asc(theVector)

"INTRO"
hist(numericVector, breaks=128, xlim=c(0,128), xaxt="n", main=paste("Prof. Legolasov Data Sequence Histogram"), xlab=paste("Prof. Legolasov Symbols"))
axis(1, at=seq(0,128, by=1))
summary(numericVector)

"PART 1"
numVec1 = numericVector[1:8]
letters <- c("{", "q", "t", "i", "w", "5", "4")
values <- c(0.1,0.3,0.6,0.7,0.4,0.2,0.8)
names(values) <- letters

x = c(1:10)
foo <- function(a,x,b){a*x+b*10}

plot(x,foo(values[chr(numVec1[[1]])], x, values[chr(numVec1[[2]])]), type="l", main="Ne Horosho 1", asp=1, ylab="y")

plot(x,foo(values[chr(numVec1[[3]])], x, values[chr(numVec1[[4]])]), type="l", main="Ne Horosho 2", asp=1, ylab="y")

plot(x,foo(values[chr(numVec1[[5]])], x, values[chr(numVec1[[6]])]), type="l", main="Ne Horosho 3", asp=1, ylab="y")

plot(x,foo(values[chr(numVec1[[7]])], x, values[chr(numVec1[[8]])]), type="l", main="Ne Horosho 4", asp=1, ylab="y")

"PART 2"
numVec2 = numericVector[9:16]
paste(numVec2-mean(numVec2))

"PART 3"
numVec3 = numericVector[17:24]
ne_uzhasno <- function(x){x*(5*x+15)}
paste(ne_uzhasno(numVec3))

"PART 4"
numVec4 = numericVector[25:32]
tmp = c(numVec4[3:8], numVec4[1:2])
tmp2 = c(tmp[3:4], tmp[7:8], tmp[1:2], tmp[5:6])
paste(tmp2 + 0x17)

"PART 5"
numVec5 = numericVector[33:40]
a = matrix(numVec5, nrow=8)
b = matrix(c(2,3,2,4,1,8,6,7,6,7,2,4,1,6,2,8,9,0,2,3,6,5,4,3,1,2,7,4,0,6,8,7,5,6,2,3,7,6,5,4,1,5,8,6,3,6,8,9,7,4,5,6,2,9,1,7,6,7,3,9,9,4,5,3), nrow=8)
paste(b %*% a)
