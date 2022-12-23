

library(tidyverse)
library(ggplot2)
library(Lahman)

#Clean
redsox <- Pitching %>% 
  filter(yearID == 2004) %>%
  filter(teamID == "BOS")

boxplot <- ggplot(redsox,
                  aes(x = teamID,
                  y = HR)) +
  geom_boxplot()
boxplot

violin_plot <- ggplot(redsox,
       aes(x = teamID,
           y = HR)) +
  geom_violin(color ="navy",
              fill = "red")
violin_plot

violin_plot +
  labs(title = "Distribution of Red Sox HRs Allowed",
       subtitle = "Red Sox 2004 world Series Season",
       caption ="Data viz by NCSU SAC | Data Lahman Package",
       x ="",
       y= "Homeruns Allowed")+
  theme(plot.title = element_text(hjust=0.5),
        plot.subtitle = element_text(hjust=0.5),
        plot.caption=element_text(hjust=0.5))



