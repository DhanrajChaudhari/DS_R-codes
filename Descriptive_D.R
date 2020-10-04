##airquality
airquality<-datasets::airquality
 
##top 10 and last 10 rows

head(airquality,10)
tail(airquality,5)

airquality[,c(1,2)]

df<-airquality[,-6]

summary(airquality[,1])

 

summary(airquality$Wind)
 

###Summary of the data

summary(airquality$Wind)

summary(airquality$Temp)

summary(airquality$Ozone)

summary(airquality)

#####graph

plot(airquality$Wind)

plot(airquality$Temp,airquality$Wind,type="p")

plot(airquality)

plot(airquality$Wind,type ="l")

plot(airquality$Wind,xlab='Ozone concentration',
     ylab='No of instances',main='Ozone concentration in NY city',col='blue')

#Horizontal bar plot

barplot(airquality$Ozone,main='Ozone concentration in air',ylab='Ozone levels',col='blue', horiz=F,axes =T)

##Histogram

hist(airquality$Temp)

hist(airquality$Temp,main='Solar Radiation values in air',xlab='Solar rad.',col='blue')

par(mfrow=c(3,3),mar=c(2,5,2,1),  las=0, bty="o")

plot(airquality$Ozone)
plot(airquality$Ozone,airquality$Wind,type="l")
plot(airquality$Ozone,type="l")
plot(airquality$Ozone)
hist(airquality$Solar.R)

boxplot(airquality$Solar.R)
