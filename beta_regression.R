library(betareg)

#importing the data 
london <- read_excel("Downloads/london-ward-well-being-probability-scores.xls",sheet = "Data")
head(london)

# their was some missing values in this that ,so to remove the missing value i've used 
london<- na.omit(london)
View(london)

# my research aim is to investigate the fator effecting crime rate in london , this data contains the information about 5 years from 2009 to 2013. To ivestigate the crime rate in 2013 ,i've made a another data set which contains only the data of 2013.

model_data <- london[, c("Life Expectancy 2009-13","Childhood Obesity 2013","Incapacity Benefit rate - 2013","Unemployment rate 2013","Crime rate - 2013","Deliberate Fires - 2013","GCSE point scores - 2013",
                                                                          "Unauthorised Absence in All Schools (%) - 2013","Public Transport Accessibility - 2013","Homes with access to open space & nature, and % greenspace - 2013",
                                                                     "Subjective well-being average score, 2013","% dependent children in out-of-work households - 2013")]
                                                                          
#As the crime rate is used as the response variable, it is required to lie within the interval (0, 1). Accordingly, the values were rescaled to this range.

model_data$`Crime rate - 2013`<-
  (model_data$`Crime rate - 2013` - min(model_data$`Crime rate - 2013`, na.rm = TRUE)) /
  (max(model_data$`Crime rate - 2013` , na.rm = TRUE) - min(model_data$`Crime rate - 2013` , na.rm = TRUE))
#to check is it really change we will check the range of the crime rate in 2013 
range(model_data$`Crime rate - 2013`)

#The data types were examined to identify any character or non-numeric variables, which were converted to numeric format.
str(model_data)

#there are three columns which have non numeric(char) data type so, we will change them to numeric.

model_data$`Deliberate Fires - 2013` <- as.numeric(as.character(model_data$`Deliberate Fires - 2013`))


model_data$`Public Transport Accessibility - 2013` <- as.numeric(as.character(model_data$`Public Transport Accessibility - 2013`))

model_data$`Homes with access to open space & nature, and % greenspace - 2013`<- as.numeric(as.character(model_data$`Homes with access to open space & nature, and % greenspace - 2013`))

#now wel will check again if its changed or any column left for change 
str(model_data)

#perfect!
#now well will make a beta regression model using betareg and see what we get as an output in summary.
model_beta<-betareg(model_data$`Crime rate - 2013`~.,data=model_data, link= "logit")
summary(model_beta)





