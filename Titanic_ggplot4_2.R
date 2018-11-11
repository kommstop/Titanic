library(readxl)
library(tidyr)
install.packages("dplyr")
library(dplyr)
install.packages("readxl")
library("readxl")
#0: Load the data in RStudio
titanic3 <- read_excel("C:/Projects/Data Science Course/DataWrangling/Exercise2/Titanic/titanic3.xls")
#1: Port of embarkation--Find the missing values and replace them with S. 
df <- titanic3
#2: Age-- Calculate the mean of the Age column and use that value to populate the missing values
df_agemean <- round(abs(df_agemean))
df$age[is.na(df$age)] <- df$age %>% replace_na(df_agemean)
# 3: Lifeboat-- Fill Boat NA with any value
df$boat[is.na(df$boat)] <- "NONE"
#4: Cabin -- Create a new column has_cabin_number which has 1 if there is a cabin number, and 0 otherwise.
df <- df %>% mutate(has_cabin_number = ifelse(is.na(cabin), "0", "1"))
#save the csv file = titanic_clean.csv
df$boatdf_write <- write.csv(df, file = "C:/Projects/Data Science Course/DataWrangling/Exercise2/Titanic/titanic_clean.csv")
###############
#ggplot
###############
#Install and load ggplot2
install.packages("ggplot2")


#1 -- Plot the distribution of sexes within the classes(Plclass) of the ship
ggplot(titanic3, aes(x = pclass, fill = sex)) + geom_bar(position = "dodge")

#2 -- Creat panel using facet_grid separating the survived and the ones that did not surviveggplot(titanic3, aes(x = pclass, fill = sex)) + geom_bar(position = "dodge") + facet_grid(.~survived)
ggplot(titanic3, aes(x = pclass, fill = sex)) + geom_bar(position = "dodge") + facet_grid(.~survived)

#3 -- Define an objec for position jitterdogeposn.jd <- position_jitterdodge(0.5, 0.6)  Help to align points with boxplotsggplot(titanic3, aes(x = pclass, y = age, col = sex)) + geom_point(size = 3, alpha = .5, position = posn.jd) + facet_grid(.~survived)
posn.jd <- position_jitterdodge(0.5, 0.6)

#4 -- Include Age, and chaging the graph with points and selecting color by sex
ggplot(titanic3, aes(x = pclass, y = age, col = sex)) + geom_point(size = 3, alpha = .5, position = posn.jd) + facet_grid(.~survived)
