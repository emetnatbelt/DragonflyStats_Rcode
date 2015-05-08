 # Section A 10 Basic Statistical Procedures with R
 # Basic Statistical Procedures with R

##################################################################
# simulate 100 rolls of a die
dice=c(rep(1,17),rep(2,16),rep(3,15),rep(4,19),rep(5,18),rep(6,15))

table(dice)
mean(dice)
sd(dice)
median(dice)

##################################################################
# Constructing a Histogram

X=c(37,	44,	48,	51,	53,	56,	58,	60,	62,	63,
65,	67,	69,	70,	72,	74,	76,	77,	79,	81,
83,	86,	88,	91,	94,	97,	101,	106,	113,	127)


#Set the intervals from 30 to 130 - with width of 20 each
hist(X,breaks=c(30,50,70,90,110,130))


##################################################################

boxplot(X,horizontal=T)
