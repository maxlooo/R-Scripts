PlotAuto <- function() {
  Auto=read.table("Auto.data", header=T, na.strings="?")
  Auto[1:4,]
  Auto=na.omit(Auto)
  attach(Auto)
  pdf("PlotAuto.pdf")
  plot(cylinders, mpg)
  cylinders=as.factor(cylinders)
  plot(cylinders, mpg)
  plot(cylinders, mpg, col="blue", varwidth=T,horizontal=T)
  plot(cylinders, mpg, col="green", varwidth=T, xlab="cylinders", ylab="MPG")
  hist(mpg,col=3)
  hist(mpg,col=4,breaks=15)
  pairs(Auto)
  pairs(~ mpg + displacement + horsepower + weight + acceleration, Auto, pch="+", col=5)
  dev.off()
  summary(Auto)
}
