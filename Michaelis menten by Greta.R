

####Michaelis Menten attempt number 2 
S <- c(0,1,2,5,8,12,30,50)
V <- c(0,11.1,25.4,44.8,54.5,58.2,72.0,60.1)


mich.ment <-function (S,V) {endata <-data.frame(S,V)
  enplot<-plot(endata) 
  return(enplot)}

mich.ment(S,V)


####Michaelis Menten with ggplot

Line <- TRUE                                  ###defining labels for the axes so that the rest of the functions will just refer to this
Xlab <- "Substrate (mM)"  
Ylab <- "Velocity (nmol/s)"


mich.ment2 <-function (S,V) {
  library(ggplot2) 
  endata <-data.frame(S,V)
enplot<-ggplot(endata, aes (x = S, y = V))+ geom_point() + 
  xlab(Xlab) +
  ylab(Ylab) +
  theme_bw() 
return(enplot)}

mich.ment2(S,V)

####

