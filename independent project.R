#Composition data, not with neighborhood
herb<- read.csv("herbaceous.csv",header=TRUE)
herb[is.na(herb)]<- 0
library(vegan)
h.spe<- read.csv("Hspecies.csv",header=TRUE)
h.spe[is.na(h.spe)]<- 0
#NEED TO REMOVE anywhere where there are periods, makes in non numeric
  #sapply(herb,class) (to check if they are numeric)
herb.pca<- rda(h.spe~field_code+plot_number,data=herb)
 +Condition(neighborhood) added to that, once I figure out error message
herb.pca<- capscale(h.spe~field_code+Condition(plot_number),data=herb)

library(knitr)
kable(head(herb),align="c")
