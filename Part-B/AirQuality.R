summary(airquality)
y=airquality$Temp
x1=airquality$Ozone
x2=airquality$Solar.R
x3=airquality$Wind
boxplot(airquality$Wind, horizontal =TRUE,main="Boxplot of Wind speeds",
col="green",xlab="MPH" )
boxplot(airquality$Ozone, horizontal =TRUE,main="Boxplot of Ozone levels",
col="yellow",xlab="Parts per billion " )
