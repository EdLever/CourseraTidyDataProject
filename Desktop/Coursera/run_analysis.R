library(dplyr)

X_train <- read.table("C:/Users/Eduardo/Desktop/Coursera/UCI HAR Dataset/train/X_train.txt", quote="\"")
y_train <- read.table("C:/Users/Eduardo/Desktop/Coursera/UCI HAR Dataset/train/y_train.txt", quote="\"")
X_test <- read.table("C:/Users/Eduardo/Desktop/Coursera/UCI HAR Dataset/test/X_test.txt", quote="\"")
y_test <- read.table("C:/Users/Eduardo/Desktop/Coursera/UCI HAR Dataset/test/y_test.txt", quote="\"")
subject_test <- read.table("C:/Users/Eduardo/Desktop/Coursera/UCI HAR Dataset/test/subject_test.txt", quote="\"")
subject_train <- read.table("C:/Users/Eduardo/Desktop/Coursera/UCI HAR Dataset/train/subject_train.txt", quote="\"")

test <- cbind(subject_test, y_test, X_test)
train<- cbind(subject_train, y_train, X_train)
df <- rbind(train,test)


features <- read.table("C:/Users/Eduardo/Desktop/Coursera/UCI HAR Dataset/features.txt", quote="\"")
listofNames <-as.character(features[,2])
listofcolNames <- make.names(listofNames, unique=TRUE)
colnames(df)<- c("Subject","Activity",listofcolNames)

df2 <-select(df, Subject, Activity, contains("mean"), contains("std"))
activity_labels <- read.table("C:/Users/Eduardo/Desktop/Coursera/UCI HAR Dataset/activity_labels.txt", quote="\"")
colnames(activity_labels) <- c("Activity" , "Activity_label")
df3 <- merge(df2, activity_labels , by.x = "Activity")
df4 <- group_by(df3, Activity_label, Subject) %>% summarise_each(funs(mean))

names(df4) <- sub("tBodyAccJerk", "body.linear.acceleration", names(df4))
names(df4) <- sub("BodyBody", "Body", names(df4))
names(df4) <- sub("BodyAcc", "Body.acceleration", names(df4))
names(df4) <- sub("BodyGyro", "Angular.velocity", names(df4))
names(df4) <- sub("Mag", ".Magnitude", names(df4))


