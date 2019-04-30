


e_use_2014<- data.frame(year=rep(2014,22007),try=nyts2014$qn31,days=nyts2014$qn35,gender=nyts2014$qn2)
age_first_2014<- data.frame(year=rep(2014,22007),nyts2014$qn34,gender=nyts2014$qn2)
regular_e_2014<- data.frame(key=rep("e",22007),year=rep(2014,22007),days=nyts2014$qn35,gender=nyts2014$qn2)
regular_c_2014<- data.frame(key=rep("c",22007),year=rep(2014,22007),days=nyts2014$qn13,gender=nyts2014$qn2)
regular_2014<- rbind(regular_e_2014,regular_c_2014)
newspaper_2014<- data.frame(year=rep(2014,22007),nyts2014$qn69,gender=nyts2014$qn2)
supermarket_2014<- data.frame(year=rep(2014,22007),nyts2014$qn70,gender=nyts2014$qn2)
TV_2014<- data.frame(year=rep(2014,22007),nyts2014$qn71,gender=nyts2014$qn2)


e_use_2015<- data.frame(year=rep(2015,17711),try=nyts2015$Qn28,days=nyts2015$Qn32,gender=nyts2015$Qn2)
age_first_2015<- data.frame(year=rep(2015,17711),nyts2015$Qn31,gender=nyts2015$Qn2)
life_e_2015<- data.frame(year=rep(2015,17711),nyts2015$Qn33,gender=nyts2015$Qn2)
regular_e_2015<- data.frame(key=rep("e",17711),year=rep(2015,17711),days=nyts2015$Qn32,gender=nyts2015$Qn2)
regular_c_2015<- data.frame(key=rep("c",17711),year=rep(2015,17711),days=nyts2015$Qn12,gender=nyts2015$Qn2)
regular_2015<- rbind(regular_e_2015,regular_c_2015)
where.buy_2015<- data.frame(year=rep(2015,17711),nyts2015[,110:120],gender=nyts2015$Qn2)
internet_2015<- data.frame(year=rep(2015,17711),nyts2015$Qn69,gender=nyts2015$Qn2)
supermarket_2015<- data.frame(year=rep(2015,17711),nyts2015$Qn71,gender=nyts2015$Qn2)
TV_2015<- data.frame(year=rep(2015,17711),nyts2015$Qn72,gender=nyts2015$Qn2)


e_use_2016<- data.frame(year=rep(2016,20675),try=nyts2016$Qn26,days=nyts2016$Qn31,gender=nyts2016$Qn2)
age_first_2016<- data.frame(year=rep(2016,20675),nyts2016$Qn30,gender=nyts2016$Qn2)
regular_e_2016<- data.frame(key=rep("e",20675),year=rep(2016,20675),days=nyts2016$Qn31,gender=nyts2016$Qn2)
regular_c_2016<- data.frame(key=rep("c",20675),year=rep(2016,20675),days=nyts2016$Qn13,gender=nyts2016$Qn2)
regular_2016<- rbind(regular_e_2016,regular_c_2016)
life_e_2016<- data.frame(year=rep(2016,20675),nyts2016$Qn32,gender=nyts2016$Qn2)
where.buy_2016<- data.frame(year=rep(2016,20675),nyts2016[,54:64],gender=nyts2016$Qn2)
internet_2016<- data.frame(year=rep(2016,20675),nyts2016$Qn73,gender=nyts2016$Qn2)
newspaper_2016<- data.frame(year=rep(2016,20675),nyts2016$Qn74,gender=nyts2016$Qn2)
supermarket_2016<- data.frame(year=rep(2016,20675),nyts2016$Qn75,gender=nyts2016$Qn2)
TV_2016<- data.frame(year=rep(2016,20675),nyts2016$Qn76,gender=nyts2016$Qn2)



e_use_2017<- data.frame(year=rep(2017,17872),try=nyts2017$Qn28,days=nyts2017$Qn31,gender=nyts2017$Qn2)
age_first_2017<- data.frame(year=rep(2017,17872),nyts2017$Qn29,gender=nyts2017$Qn2)
regular_e_2017<- data.frame(key=rep("e",17872),year=rep(2017,17872),days=nyts2017$Qn31,gender=nyts2017$Qn2)
regular_c_2017<- data.frame(key=rep("c",17872),year=rep(2017,17872),days=nyts2017$Qn11,gender=nyts2017$Qn2)
regular_2017<- rbind(regular_e_2017,regular_c_2017)
life_e_2017<- data.frame(year=rep(2017,17872),days=nyts2017$Qn30,gender=nyts2017$Qn2)
where.buy_2017<- data.frame(year=rep(2017,17872),nyts2017[,40:50],gender=nyts2017$Qn2)
internet_2017<- data.frame(year=rep(2017,17872),nyts2017$Qn78,gender=nyts2017$Qn2)
newspaper_2017<- data.frame(year=rep(2017,17872),nyts2017$Qn79,gender=nyts2017$Qn2)
supermarket_2017<- data.frame(year=rep(2017,17872),nyts2017$Qn80,gender=nyts2017$Qn2)
TV_2017<- data.frame(year=rep(2017,17872),nyts2017$Qn81,gender=nyts2017$Qn2)



e_use_2018<- data.frame(year=rep(2018,20189),try=nyts2018$Qn28,days=nyts2018$Qn31,gender=nyts2018$Qn2)
age_first_2018<- data.frame(year=rep(2018,20189),nyts2018$Qn29,gender=nyts2018$Qn2)
regular_e_2018<- data.frame(key=rep("e",20189),year=rep(2018,20189),days=nyts2018$Qn31,gender=nyts2018$Qn2)
regular_c_2018<- data.frame(key=rep("c",20189),year=rep(2018,20189),days=nyts2018$Qn11,gender=nyts2018$Qn2)
regular_2018<- rbind(regular_e_2018,regular_c_2018)
life_e_2018<- data.frame(year=rep(2018,20189),days=nyts2018$Qn30,gender=nyts2018$Qn2)
where.buy_2018<- data.frame(year=rep(2018,20189),nyts2018[,41:51],gender=nyts2018$Qn2)
internet_2018<- data.frame(year=rep(2018,20189),fre=nyts2018$Qn78,gender=nyts2018$Qn2)
newspaper_2018<- data.frame(year=rep(2018,20189),fre=nyts2018$Qn79,gender=nyts2018$Qn2)
supermarket_2018<- data.frame(year=rep(2018,20189),fre=nyts2018$Qn80,gender=nyts2018$Qn2)
TV_2018<- data.frame(year=rep(2018,20189),fre=nyts2018$Qn81,gender=nyts2018$Qn2)




library(ggplot2)
library(plyr)
######## regular smoker

regular<- rbind(regular_2014,regular_2015,regular_2016,regular_2017,regular_2018)
index<- complete.cases(regular)
regular<- regular[index,]
my.reg.per<- function(x){
  my.reg.per1<- function(y){return(sum(y$days>2)/dim(y)[1])}
  return(daply(x,.(year),my.reg.per1))
}
regular_per<- daply(regular,.(key),my.reg.per)
ggplot()+geom_line(aes(x=2014:2018,y=regular_per[1,],color="e-cigarette"),size=1.5)+
         geom_line(aes(x=2014:2018,y=regular_per[2,],color="cigarette"),size=1.5)+
         xlab("year")+ylab("percentage of regular smoker")+ggtitle("percentage of regular smoker of e-cigarette/cigarette in each year")

####  F and M are similar
 regular.male_per<- daply(regular[regular$gender==1,],.(key),my.reg.per)
# ggplot()+geom_line(aes(x=2014:2018,y=regular.male_per[1,],color="e-cigarette"),size=1.5)+
#   geom_line(aes(x=2014:2018,y=regular.male_per[2,],color="cigarette"),size=1.5)+
#   xlab("year")+ylab("percentage of regular smoker")
# 
 regular.female_per<- daply(regular[regular$gender==2,],.(key),my.reg.per)
# ggplot()+geom_line(aes(x=2014:2018,y=regular.female_per[1,],color="e-cigarette"),size=1.5)+
#   geom_line(aes(x=2014:2018,y=regular.female_per[2,],color="cigarette"),size=1.5)+
#   xlab("year")+ylab("percentage of regular smoker")
 ratio<- regular.female_per/regular.male_per
ggplot()+ geom_line(aes(x=2014:2018,y=ratio[1,],color="e-cigarette"))+
          geom_line(aes(x=2014:2018,y=ratio[2,],color="cigarette"))+
          xlab("year")+ylab("retio ")+
          ggtitle("ratio of female and male regular smokers")


######## e smoker addiction
e_use<- rbind(e_use_2014,e_use_2015,e_use_2016,e_use_2017,e_use_2018)
index<- complete.cases(e_use)
e_use<- e_use[index,]
my.add.per<- function(x){return(sum(x$days>2)/dim(x)[1])}
addiction.rate<- daply(e_use[e_use$try==1,],.(year),my.add.per)
ggplot()+geom_line(aes(x=2014:2018,y=addiction.rate),color="purple")+
        xlab("year")+ylab("addiction rate")+
        ggtitle("percentage of those who tried e-cigarette to be addicted to it")

addiction.rate.male<- daply(e_use[e_use$try==1&e_use$gender==1,],.(year),my.add.per)
addiction.rate.female<- daply(e_use[e_use$try==1&e_use$gender==2,],.(year),my.add.per)
ggplot()+geom_line(aes(x=2014:2018,y=addiction.rate.male,color="male"))+
         geom_line(aes(x=2014:2018,y=addiction.rate,color="overall"))+
         geom_line(aes(x=2014:2018,y=addiction.rate.female,color="female"))+
         xlab("year")+ylab("addiction rate")+
         ggtitle("percentage of those who tried e-cigarette to be addicted to it")



#################### age of first smoke
colnames(age_first_2014)<- c("year","age","gender")
colnames(age_first_2015)<- c("year","age","gender")
colnames(age_first_2016)<- c("year","age","gender")
colnames(age_first_2017)<- c("year","age","gender")
colnames(age_first_2018)<- c("year","age","gender")
age_first<- rbind(age_first_2014,age_first_2015,age_first_2016,age_first_2017,age_first_2018)

index<- complete.cases(age_first)
age_first<- age_first[index,]
age_first$age<- age_first$age+6

age_first1<- age_first[age_first$age >8,]

ggplot(data = age_first1)+geom_boxplot(aes(y=age,x=as.factor(year),fill=as.factor(year)))+
      xlab("year")+ylab("age of first-time smoking")+
       ggtitle("boxplot of age of trying e-cigarette for the first time")




# ggplot(data = age_first1,aes(age))+geom_histogram(aes(y=..density..),binwidth =1, color="red")+facet_wrap(facets = ~year)
# 
# my.table<- function(x){return(table(x[,2]))}
# age_first_table<- daply(age_first1,.(year),my.table)
# 
# my.quantile<- function(x){return(quantile(x[,2],(1:10)/10))}
# age_first_quantile<- daply(age_first1,.(year),my.quantile)

# ggplot(age_first1, aes(x=age,y=as.factor(as.character(year)),fill= year,alpha=0.2))+
#   geom_density_ridges_gradient(scale = 1.5, show.legend = FALSE) + theme_ridges() +
#   scale_y_discrete(expand = c(0.1, 0)) +
#   scale_x_continuous(expand = c(0.01, 0)) +
#   labs(x = "age",y = " ") +
#   ggtitle(" ")


################ 30天，可能有些人烟龄长，所以严重
regular[regular$days==7,]$days=30
regular[regular$days==6,]$days=25
regular[regular$days==5,]$days=14.5
regular[regular$days==4,]$days=7.5
regular[regular$days==3,]$days=4
regular[regular$days==2,]$days=1.5


ggplot(regular[regular$key=="e"&regular$days>1,], aes(x=days,y=as.factor(year),fill= as.factor(year),alpha=0.2))+
  geom_density_ridges(scale = 1.5,stat = "binline", binwidth=1,show.legend = FALSE) + theme_ridges() +
  scale_y_discrete(expand = c(0.1, 0)) +
  scale_x_continuous(expand = c(0.01, 0)) +
  labs(x = "days",y = " ") +
  ggtitle(" ")

ggplot(data = regular[regular$key=="e"&regular$days>1,])+geom_boxplot(aes(y=days,x=as.factor(year),fill=as.factor(year)))+
  xlab("year")+ylab("days of smoking within one month")+
  ggtitle("boxplot of days of smoking within one month")


# regular_e1<- regular_e[regular_e$days >1,]
# ggplot(data = regular_e1,aes(days))+geom_histogram(aes(y=..density..),bins = 6,color="green")+facet_wrap(facets = ~year)
# regular_e_quantile<- daply(regular_e1,.(year),my.quantile)


######### advertisement

adv<- rbind(data.frame(source=rep("internet",dim(internet_2018)[1]),internet_2018),
            data.frame(source=rep("newspaper",dim(newspaper_2018)[1]), newspaper_2018),
            data.frame(source=rep("supermarket",dim(supermarket_2018)[1]),supermarket_2018),
            data.frame(source=rep("TV",dim(TV_2018)[1]),TV_2018))

index<-complete.cases(adv)
adv<- adv[adv$fre>1 & index,]
adv$fre<- as.factor(adv$fre)
adv$source<-as.factor(adv$source)
levels(adv$fre)<- c("Never","Rarely","Sometimes","Most of the time","Always")
ggplot(data = adv)+geom_col(aes(x=source,y=Freq,fill=fre),position = "dodge")


platte <- rev(brewer.pal(5, 'RdBu'))
vcd::mosaic(fre ~ source, adv,
            direction = c("v", "h"),
            gp = gpar(fill = platte))

        




################
colnames(ever_use_2014)<- c("year","Yes1")
colnames(ever_use_2015)<- c("year","Yes1")
colnames(ever_use_2016)<- c("year","Yes1")
colnames(ever_use_2017)<- c("year","Yes1")
colnames(ever_use_2018)<- c("year","Yes1")
ever_use<- rbind(ever_use_2014,ever_use_2015,ever_use_2016,ever_use_2017,ever_use_2018)
ggplot(data = ever_use)+geom_histogram(mapping = aes(Yes1),stat = "count")+facet_wrap(facets = ~year)

index<- complete.cases(ever_use)
ever_use<- ever_use[index,]
my.percent<- function(x){return(sum(x[,2]==1)/dim(x)[1])}
ever_use_percent<- daply(ever_use,.(year),my.percent)


####################
colnames(age_first_2014)<- c("year","age")
colnames(age_first_2015)<- c("year","age")
colnames(age_first_2016)<- c("year","age")
colnames(age_first_2017)<- c("year","age")
colnames(age_first_2018)<- c("year","age")
age_first<- rbind(age_first_2014,age_first_2015,age_first_2016,age_first_2017,age_first_2018)

index<- complete.cases(age_first)
age_first<- age_first[index,]
age_first1<- age_first[age_first$age >1,]
ggplot(data = age_first1,aes(age))+geom_histogram(aes(y=..density..),binwidth =1, color="red")+facet_wrap(facets = ~year)

my.table<- function(x){return(table(x[,2]))}
age_first_table<- daply(age_first1,.(year),my.table)

my.quantile<- function(x){return(quantile(x[,2],(1:10)/10))}
age_first_quantile<- daply(age_first1,.(year),my.quantile)



##########
hist(TV_2014[,2],freq = F)
> hist(TV_2015[,2],freq = F)
> hist(TV_2016[,2],freq = F)
> hist(TV_2017[,2],freq = F)
> hist(TV_2018[,2],freq = F)














