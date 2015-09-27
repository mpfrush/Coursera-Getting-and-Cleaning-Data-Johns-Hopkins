# set working directory
setwd("C:/Users/postdoc/Desktop/learn_R")

#download files for analysis
if (!file.exists("hwdata")){
  dir.create("hwdata")
}
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl,destfile="./hwdata/Dataset.zip",mode="wb")
data <- unzip("./hwdata/Dataset.zip",exdir="./hwdata")

# read train and test datasets
train_data <- read.table("./hwdata/UCI HAR Dataset/train/X_train.txt")
train_labels <- read.table("./hwdata/UCI HAR Dataset/train/y_train.txt")
train_subjects <- read.table("./hwdata/UCI HAR Dataset/train/subject_train.txt")

test_data <- read.table("./hwdata/UCI HAR Dataset/test/X_test.txt")
test_labels <- read.table("./hwdata/UCI HAR Dataset/test/y_test.txt")
test_subjects <- read.table("./hwdata/UCI HAR Dataset/test/subject_test.txt")

#get variable names from features.txt file
var_names <- read.table("./hwdata/UCI HAR Dataset/features.txt")
col_names <- t(var_names[2])

# merge train and test datasets into one dataset
merged <- rbind(train_data,test_data)
# assigned column names to variable names
colnames(merged) <- col_names

#extract the mean and std columns only for each measurements
selected <- merged[,grep("mean()|std()",colnames(merged))]

#merge train and test subjects into one subject set
subjects <- rbind(train_subjects,test_subjects)
colnames(subjects) <- "subject"

# merge activities of train and test datasets into one activity set
labels <- rbind(train_labels,test_labels)
colnames(labels) <- "activity" 

# combine subject, activity sets with mean and std set into one final dataset
data <- cbind(subjects,labels,selected)
 
# calculate average of each column for each subject and each activity
library(plyr)  
data_final <- ddply(data, c("subject","activity"), numcolwise(mean))

# create descriptive activity names in the dataset data_final
for (i in 1:6){
  if (i==1) {x="WALKING"}
  else if (i==2) {x="WALKING_UPSTAIRS"}
  else if (i==3) {x="WALKING_DOWNSTAIRS"}
  else if (i==4) {x="SITTING"}
  else if (i==5) {x="STANDING"}
  else {x="LAYING"}
  
  data_final$activity <- tolower(gsub(i,x,data_final$activity))
}

# relabel the dataset with descriptive variable names (starts with letter, includes only letters, numbers, dot or underscores)
names(data_final) <- gsub("-","_",names(data_final))
names(data_final) <- gsub("[:():]","",names(data_final))

# write the tidy data to a .txt file
write.table(data_final,file="tidy_data.txt",row.name=FALSE)
# check the written .txt file
View(read.table("tidy_data.txt", header = TRUE))