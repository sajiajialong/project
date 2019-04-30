reasons_2018<- nyts2018[,52:61] 
test<- cbind(e_use_2018,reasons_2018)
sum(!is.na(reasons_2018[,1]))
index<-!is.na(test$try)
x<-test$try[index]
sum(x==1)


index<- !is.na(reasons_2018[,2])
days<- test$days[index]
days<- days[!is.na(days)]
days<- days[days>1]


days<- test$days
days[days==7]=30
days[days==6]=25
days[days==5]=14.5
days[days==4]=7.5
days[days==3]=4
days[days==2]=1.5
days0<- days[days>1& !is.na(days)]
ggplot()+geom_boxplot(aes(y=days0))
ggplot()+geom_histogram(aes(x=days0))


index<- (!is.na(reasons_2018[,2]))&(!is.na(days))&(days>1)
days1<-days[index]
ggplot()+geom_boxplot(aes(y=days1))+ggtitle("reason1")
ggplot()+geom_histogram(aes(x=days1))+ggtitle("reason1")


index<- (!is.na(reasons_2018[,3]))&(!is.na(days))&(days>1)
days2<-days[index]
ggplot()+geom_boxplot(aes(y=days2))+ggtitle("reason2")
ggplot()+geom_histogram(aes(x=days2))+ggtitle("reason2")

index<- (!is.na(reasons_2018[,4]))&(!is.na(days))&(days>1)
days3<-days[index]
ggplot()+geom_boxplot(aes(y=days3))+ggtitle("reason3")
ggplot()+geom_histogram(aes(x=days3))+ggtitle("reason3")

index<- (!is.na(reasons_2018[,5]))&(!is.na(days))&(days>1)
days4<-days[index]
ggplot()+geom_boxplot(aes(y=days4))+ggtitle("reason4")
ggplot()+geom_histogram(aes(x=days4))+ggtitle("reason4")


index<- (!is.na(reasons_2018[,6]))&(!is.na(days))&(days>1)
days5<-days[index]
ggplot()+geom_boxplot(aes(y=days5))+ggtitle("reason5")
ggplot()+geom_histogram(aes(x=days5))+ggtitle("reason5")


index<- (!is.na(reasons_2018[,7]))&(!is.na(days))&(days>1)
days6<-days[index]
ggplot()+geom_boxplot(aes(y=days6))+ggtitle("reason6")
ggplot()+geom_histogram(aes(x=days6))+ggtitle("reason6")


index<- (!is.na(reasons_2018[,8]))&(!is.na(days))&(days>1)
days7<-days[index]
ggplot()+geom_boxplot(aes(y=days7))+ggtitle("reason7")
ggplot()+geom_histogram(aes(x=days7))+ggtitle("reason7")


index<- (!is.na(reasons_2018[,9]))&(!is.na(days))&(days>1)
days8<-days[index]
ggplot()+geom_boxplot(aes(y=days8))+ggtitle("reason8")
ggplot()+geom_histogram(aes(x=days8))+ggtitle("reason8")

index<- (!is.na(reasons_2018[,10]))&(!is.na(days))&(days>1)
days9<-days[index]
ggplot()+geom_boxplot(aes(y=days9))+ggtitle("reason9")
ggplot()+geom_histogram(aes(x=days9))+ggtitle("reason9")

days.test<- rbind(data.frame(days=days1,reason=rep(1,length(days1))),
                  data.frame(days=days2,reason=rep(2,length(days2))),
                  data.frame(days=days3,reason=rep(3,length(days3))),
                  data.frame(days=days4,reason=rep(4,length(days4))),
                  data.frame(days=days5,reason=rep(5,length(days5))),
                  data.frame(days=days6,reason=rep(6,length(days6))),
                  data.frame(days=days7,reason=rep(7,length(days7))),
                  data.frame(days=days8,reason=rep(8,length(days8))),
                  data.frame(days=days9,reason=rep(9,length(days9))))
days.test$reason<- as.factor(days.test$reason)
levels(days.test$reason)<- c("family/friend use","quit other product","cheap","easier to get","famous people use",
                             "less harmful","flavor","area","other")
ggplot(data = days.test)+geom_boxplot(aes(x=reason,y=days,fill=reason))







