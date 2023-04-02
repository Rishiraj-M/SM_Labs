list=c(12,25,28,29,29,30,34,35,35,37,38,50)
boxplot(list,col='red')
quartile<-quantile(list,probs=c(.25,.75))
iqr<-IQR(list)
lower<-quartile[1]-iqr*1.5
upper<-quartile[2]+iqr*1.5
newlist<-subset(list,list>lower & list<upper)
vals<-c(101,101,106,106,106,106,106,106,106,106,111,111,111,111,111,111,111,111,111,111,111,111,111,111,111,111,111,111,116,116,116,116,116,116,116,116,116,116,116,116,116,121,121,121,121,121,121,121,121,126,131)
hist(vals)
