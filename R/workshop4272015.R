2+2
data<-read.csv("~/Desktop/gapminder.csv")
summary(data)
data[data$lifeExp>80,"country"]
install.packages("dplyr")
install.packages("ggplot2")
library("dplyr")
select(data,country, year, pop)
filter(data,country=="Finland")
data %>%
  filter(gdpPercap>=35000) %>%
  select(country, year, gdpPercap)
data %>%
  mutate(totalgdp = gdpPercap*pop) %>%
  group_by(continent) %>%
  summarize(meangdp = mean(totalgdp), mingdp = min(totalgdp))
tablelife <-data %>%
  group_by(year) %>%
  summarize(meanlife = mean(lifeExp), minlife = min(lifeExp), maxlife = max(lifeExp))
China <- data %>%
  filter(country== "China") %>%
  select(country, year, pop, lifeExp, gdpPercap)
library(help=dplyr)

write.csv(Lebanon, "lebanonstats.csv")
setwd("~/Documents")
library(ggplot2)
gapminder<-read.csv("~/Desktop/gapminder.csv")
#scatterplot of lifeExp vs gdpPercapita
#ggplot2 makes objects you add together
#scale
p4<-ggplot(Lebanonall,aes(x=(gdpPercap), y = lifeExp))
p5<-p4 + geom_point() +scale_x_log10()
#print p3 in the console to show graph
( all<- gapminder %>%
  select(country, year, pop, lifeExp, gdpPercap) %>%
  ggplot(aes(x=(gdpPercap), y = lifeExp)) + geom_point(size = 4) +scale_x_log10() + aes(color = continent))
(all<- gapminder %>%
    ggplot(aes(x=(gdpPercap), y = lifeExp)) + geom_point() +scale_x_log10() + aes(color = year) +aes(size = pop) +aes(shape = continent))
ChinaIndia <- data %>%
  filter(country == "India" | country == "China")
Comparison<- ggplot(ChinaIndia, aes(x=(gdpPercap), y = lifeExp))  + geom_line(aes(group = country)) + geom_point(aes(color=country)) + geom_point(aes(size = pop)) +scale_x_log10()  

data %>%
  filter(year==2007) %>%
  ggplot(aes(x=continent)) + geom_histogram(binwidth=2.5, fill= "lightblue", color="black")
data %>%
  filter(year==2007) %>%
  ggplot(aes(x=continent, y = gdpPercap)) + facet_grid(~continent) + geom_boxplot()+geom_point(position=position_jitter(width=0.1, height=0))
#facet
data %>%
  filter(year==2007) %>%
  ggplot(aes(x=lifeExp, y = gdpPercap)) + geom_point() + facet_grid(~continent) +scale_x_log10()
data %>%
  ggplot(aes(x=gdpPercap, y = lifeExp), color=continent) + geom_point() + facet_wrap(~year) +scale_x_log10()
setwd(~/Desktop/swc-wsu)
install.packages("knitr")
install.packages("rmarkdown")
library("knitr")
library("rmarkdown")
