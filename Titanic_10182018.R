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