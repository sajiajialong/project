ever_use_2014<- data.frame(year=rep(2014,22007),nyts2014$qn31)
age_first_2014<- data.frame(year=rep(2014,22007),nyts2014$qn34)
monthly_e_2014<- data.frame(year=rep(2014,22007),nyts2014$qn35)
newspaper_2014<- data.frame(year=rep(2014,22007),nyts2014$qn69)
supermarket_2014<- data.frame(year=rep(2014,22007),nyts2014$qn70)
TV_2014<- data.frame(year=rep(2014,22007),nyts2014$qn71)


ever_use_2015<- data.frame(year=rep(2015,17711),nyts2015$Qn28)
age_first_2015<- data.frame(year=rep(2015,17711),nyts2015$Qn31)
life_e_2015<- data.frame(year=rep(2015,17711),nyts2015$Qn33)
monthly_e_2015<- data.frame(year=rep(2015,17711),nyts2015$Qn32)
where.buy_2015<- data.frame(year=rep(2015,17711),nyts2015[,110:120])
internet_2015<- data.frame(year=rep(2015,17711),nyts2015$Qn69)
supermarket_2015<- data.frame(year=rep(2015,17711),nyts2015$Qn71)
TV_2015<- data.frame(year=rep(2015,17711),nyts2015$Qn72)


ever_use_2016<- data.frame(year=rep(2016,20675),nyts2016$Qn26)
age_first_2016<- data.frame(year=rep(2016,20675),nyts2016$Qn30)
monthly_e_2016<- data.frame(year=rep(2016,20675),nyts2016$Qn31)
life_e_2016<- data.frame(year=rep(2016,20675),nyts2016$Qn32)
where.buy_2016<- data.frame(year=rep(2016,20675),nyts2016[,54:64])
internet_2016<- data.frame(year=rep(2016,20675),nyts2016$Qn73)
newspaper_2016<- data.frame(year=rep(2016,20675),nyts2016$Qn74)
supermarket_2016<- data.frame(year=rep(2016,20675),nyts2016$Qn75)
TV_2016<- data.frame(year=rep(2016,20675),nyts2016$Qn76)



ever_use_2017<- data.frame(year=rep(2017,17872),nyts2017$Qn28)
age_first_2017<- data.frame(year=rep(2017,17872),nyts2017$Qn29)
monthly_e_2017<- data.frame(year=rep(2017,17872),nyts2017$Qn31)
life_e_2017<- data.frame(year=rep(2017,17872),nyts2017$Qn30)
where.buy_2017<- data.frame(year=rep(2017,17872),nyts2017[,40:50])
internet_2017<- data.frame(year=rep(2017,17872),nyts2017$Qn78)
newspaper_2017<- data.frame(year=rep(2017,17872),nyts2017$Qn79)
supermarket_2017<- data.frame(year=rep(2017,17872),nyts2017$Qn80)
TV_2017<- data.frame(year=rep(2017,17872),nyts2017$Qn81)



ever_use_2018<- data.frame(year=rep(2018,20189),nyts2018$Qn28)
age_first_2018<- data.frame(year=rep(2018,20189),nyts2018$Qn29)
monthly_e_2018<- data.frame(year=rep(2018,20189),nyts2018$Qn31)
life_e_2018<- data.frame(year=rep(2018,20189),nyts2018$Qn30)
where.buy_2018<- data.frame(year=rep(2018,20189),nyts2018[,41:51])
internet_2018<- data.frame(year=rep(2018,20189),nyts2018$Qn78)
newspaper_2018<- data.frame(year=rep(2018,20189),nyts2018$Qn79)
supermarket_2018<- data.frame(year=rep(2018,20189),nyts2018$Qn80)
TV_2018<- data.frame(year=rep(2018,20189),nyts2018$Qn81)

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


################ 30天，可能有些人烟龄长，所以严重

colnames(monthly_e_2014)<- c("year","days")
colnames(monthly_e_2015)<- c("year","days")
colnames(monthly_e_2016)<- c("year","days")
colnames(monthly_e_2017)<- c("year","days")
colnames(monthly_e_2018)<- c("year","days")
monthly_e<- rbind(monthly_e_2014,monthly_e_2015,monthly_e_2016,monthly_e_2017,monthly_e_2018)


index<- complete.cases(monthly_e)
monthly_e<- monthly_e[index,]
monthly_e1<- monthly_e[monthly_e$days >1,]
ggplot(data = monthly_e1,aes(days))+geom_histogram(aes(y=..density..),bins = 6,color="green")+facet_wrap(facets = ~year)
monthly_e_quantile<- daply(monthly_e1,.(year),my.quantile)

##########
hist(TV_2014[,2],freq = F)
> hist(TV_2015[,2],freq = F)
> hist(TV_2016[,2],freq = F)
> hist(TV_2017[,2],freq = F)
> hist(TV_2018[,2],freq = F)














