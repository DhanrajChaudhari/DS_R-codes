e_quakes<-datasets::quakes

##top 10 and last 10 rows

head(e_quakes,10)
tail(e_quakes,5)

e_quakes[,c(1,2)]

df<-e_quakes[,-6]

summary(e_quakes[,1])



summary(e_quakes$lat)


###Summary of the data

summary(e_quakes$long)

summary(e_quakes$depth)

summary(e_quakes$mag)

summary(e_quakes$stations)

summary(e_quakes)

#####graph

plot(e_quakes$lat)

plot(e_quakes$lat,e_quakes$long,type="p")

plot(e_quakes)

plot(e_quakes$mag,type ="l")

plot(e_quakes$lat,xlab='lat x-axis',
     ylab='y-axis',main='Earth quake details',col='red')

#Horizontal bar plot

barplot(e_quakes$mag,main='Earth quake details',ylab='magnitude',col='blue', horiz=F,axes =T)

##Histogram

hist(e_quakes$depth)

par(mfrow=c(3,3),mar=c(2,5,2,1),  las=0, bty="o")
hist(e_quakes$stations,main='Stations',xlab='x-axis',col='blue')
plot(e_quakes$stations ,col='grey')
plot(e_quakes$mag,e_quakes$stations,type="l")
plot(e_quakes$long,type="l")
plot(e_quakes$depth)
hist(e_quakes$long,col='red')

boxplot(e_quakes$mag,col = 'orange')
