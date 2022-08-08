#attach file 
attach(SAMPLE_DATA_BSCOE1_3)

#dplyr load package 
library(dplyr)

#sample function
#Taking 30% random sample / filtering fav color red, blue or yellow

Sample1 <- SAMPLE_DATA_BSCOE1_3 %>% sample_frac(0.3, replace = F) 

# filtering fav color red, blue or yellow

Filter1 <- Sample1 %>% filter(`FAVORITE COLOR` %in%c("RED","BLUE","YELLOW"))

#Select
#Select Student Number, Favorite Subject, and Grade in 4 subjects
select1 <- Sample1 %>% select(`STUDENT NUMBER`, `FAVORITE SUBJECT`, 
`GRADE IN MEDIA AND INFORMATION LITERACY`, `GRADE IN MEDIA AND INFORMATION LITERACY`, 
`GRADE IN SCIENCE`, `GRADE IN MATH`)

#Rename
rename1 <- Sample1 %>% rename(Student_Number=`STUDENT NUMBER`, Gender=GENDER, 
Age=AGE, Favorite_Subject=`FAVORITE SUBJECT`, Favorite_Color=`FAVORITE COLOR`, Height=HEIGHT, 
Weight=WEIGHT, Grade_In_Math=`GRADE IN MATH`, 
Grade_In_Statistics_And_Probability=`GRADE IN STATISTICS AND PROBABILITY`, 
Grade_In_Science=`GRADE IN SCIENCE`, 
Grade_In_Media_And_Information_Literacy=`GRADE IN MEDIA AND INFORMATION LITERACY`)

#Create a new column and name it as Average. Calculate it as the average of the 4 subjects
mutate1 <- Sample1 %>%  mutate(AVERAGE=(`GRADE IN MATH` + `GRADE IN SCIENCE`
+ `GRADE IN STATISTICS AND PROBABILITY` + `GRADE IN MEDIA AND INFORMATION LITERACY`)/4)

#Summary
#Summarize the data to find out the mean and standard deviation of the Average column. Summarize the data according to favorite subject
summary1 <- Sample1 %>% group_by(`FAVORITE SUBJECT`) %>% summarise(mean(`GRADE IN MATH`), 
                                                       mean(`GRADE IN MEDIA AND INFORMATION LITERACY`),
                                                       mean(`GRADE IN SCIENCE`),
                                                       mean(`GRADE IN STATISTICS AND PROBABILITY`),
                                                        sd(`GRADE IN MATH`),
                                                        sd(`GRADE IN MEDIA AND INFORMATION LITERACY`),
                                                        sd(`GRADE IN SCIENCE`),
                                                        sd(`GRADE IN STATISTICS AND PROBABILITY`))
                                                                      













































