ContourPlot <- function() {
  x=seq(-pi,pi,length=50)
  y=x
  f=outer(x,y,function(x,y)cos(y)/(1+x^2))
  pdf("ContourPlot.pdf")
  contour(x,y,f)
  contour(x,y,f,nlevels=45)
  fa=(f-t(f))/2
  contour(x,y,fa,nlevels=15)
  image(x,y,fa)
  persp(x,y,fa)
  persp(x,y,fa,theta=30)
  persp(x,y,fa,theta=30,phi=20)
  persp(x,y,fa,theta=30,phi=70)
  persp(x,y,fa,theta=30,phi=40)
  dev.off()
}