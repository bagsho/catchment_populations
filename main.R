data<-tibble(
        distance=c(500,800,1000,1500,3000,5000),
        population=c(0.3647,0.6519,0.7442,0.8493,0.8953,0.9566)
      ) %>% 
      mutate(distance=as.integer(distance))


data %>% ggplot()+
    geom_line(aes(x=distance,y=population),color="#69b3a2")+
    scale_y_continuous(labels = scales::percent,
                       limits=c(0.2,1))+
    scale_x_discrete(
      name ="Dose (mg)", 
      limits=c(500,1500,2500,5000),
      breaks=seq(500,5000,500)
    )+
    theme(legend.position="none") +
    ggtitle("Popularity of American names in the previous 30 years") +
    theme_ipsum() +
    theme(legend.position="none")