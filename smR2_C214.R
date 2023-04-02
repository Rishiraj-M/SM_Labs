library(moments)
data2 <- read.csv("D:/Data Science/vgsales.csv")
hist(data2$Global_Sales)
skewness(data2$Global_Sales)
kurtosis(data2$Global_Sales)
data <- read.csv("D:/Data Science/headbrain.csv")
colmn=data$Head.Size.cm.3.
hist(colmn)
variencee<-var(colmn)
meann<-mean(colmn)
deviation<-variencee**0.5
getmode <- function(v) {
       uniqv <- unique(v)
       uniqv[which.max(tabulate(match(v, uniqv)))]
   }
modee<-getmode(colmn)
coeff<-(meann-modee)/deviation
coeff
a<-moment(colmn,order=4,center=TRUE)
kurt<-(a/deviation**4)-3
kurt
plot(data$Head.Size.cm.3.,data$Brain.Weight.grams.)
library(ggplot2)
plot(data$Head.Size.cm.3.,data$Brain.Weight.grams.)
boxplot(data)
pie(data2$Genre)
