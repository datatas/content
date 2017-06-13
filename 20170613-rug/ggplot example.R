
crops<-read.csv("Aggregated crop commodities.csv")
head(crops)
crops<-crops[,c(4,8,10,11,12)]
names(crops)
ggplot(data=filter(crops, 
                   Country %in% c("Australia", "Canada", "France", "indonesia")), 
       aes(x=Year , y=Value, colour = Item )) + geom_point() + geom_smooth() + 
  facet_wrap(~Country, scales="free") +geom_smooth(method="lm", lty=2) + 
  annotate("rect", xmin=1980, xmax=2000, ymin=1e7, ymax=2e7, fill=NA, col="firebrick")
