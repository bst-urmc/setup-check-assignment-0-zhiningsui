setwd("YOUR INFO HERE")

hotdogs=read.table("Hdcalsod.TXT", header=T)
attach(hotdogs)

plot(Calories, Sodium, xlab="Calories", ylab="Sodium", pch=16)
cor(Calories, Sodium)

plot(Calories, Sodium, xlab="Calories", ylab="Sodium", 
	col=Type, pch=16)

#########################################################################

hsgrads=read.table("raingrad.TXT", header=T, sep="\t")
attach(hsgrads)

plot(Rain, Education, 
      xlab="Rainfall", ylab="Average Grade Level", pch=16)
cor(Rain, Education)

#########################################################################

delta=read.table("Deltafly.TXT", header=T)
attach(delta)

hist(Miles, xlab="Distance (Miles)")
hist(DepHr, main=NULL, xlab="Departure Hour (24hour)", xlim=c(0,24))
hist(TravTime, main=NULL, xlab="Travel Time (Hours)")

plot(Miles, TravTime, xlab="Distance (Miles)", ylab="Travel Time (Hours)")
cor(Miles, TravTime)

reg.line=lm(TravTime~Miles) #calcuate the regression line for the Delta data
summary(reg.line)
abline(reg.line, col=2, lwd=2)

par(mfrow=c(1,2)) #make both plots appear together
plot(reg.line, which=1:2)  # plot residual assumption plots
par(mfrow=c(1,1)) #make only one plot appear at a time
