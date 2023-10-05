~~ R assignment
~ Step 1: Initial Exploratory Analysis
##Load Data
df<- read.csv("https://public.tableau.com/app/sample-data/HollywoodsMostProfitableStories.csv")
## Take a look at the data
View(df)
##Load Library
install.packages("tidyverse")
##Import Library
library(tidyverse)
##Check data types
str(df)

~ Step 2: Exploratory Data Analysis
##Summary Statistics
summary(df)
##scatterplot
ggplot(df, aes(x=Lead.Studio, y=Rotten.Tomatoes..)) + geom_point()+ scale_y_continuous(labels = scales::comma)+coord_cartesian(ylim = c(0, 110))+theme(axis.text.x = element_text(angle = 90))
##bar chart
ggplot(df, aes(x=Year)) + geom_bar()

~ Step 3: Clean data
##Check for missing values
colSums(is.na(df))
##Drop missing values
df_cleaned<- df %>% drop_na()
##Check to make sure that the rows have been removed
colSums(is.na(df_cleaned))
##View cleaned dataset
View(df_cleaned)

~ Step 4: Export data
##Explore clean data
write.csv(df_cleaned, "C:/Users/user/OneDrive/Documents/R/clean_df_Rassignment.csv")


