CourseraTidyDataProject
The data comes from a study at the University of Irvine which studies linear movement of people in different activities
The variables ranged from the X,Y,Z axis to the amount of acceleration and velocity ranging from person to person
In this Codebook. I will explain all the Column names within the final tidy Data set
 
All time domain signals including the accelermeter and gyroscope were captured at 50Hz, then filtered to remove 20Hz of noise. Additionally the acceleration signal was then separated into body and gravity acceleration signals with a 0.3 Hz filter.Jerk signals derived from the body linear acceleration and angular velocity.

Short hand names and their equivalent full names

tBodyAcc-XYZ - Body acceleration

tGravityAcc-XYZ - Gravity acceleration

tBodyAccJerk-XYZ -Body acceleration jerk

tBodyGyro-XYZ - Body gyroscope signal

tBodyGyroJerk-XYZ - Body Gyro Jerk

tBodyAccMag - Body acceleration magnitude

tGravityAccMag - Gravity acceleration magnitude

tBodyAccJerkMag -Body acceleration Jerk magnitude

tBodyGyroMag - Body gyroscope magnitude

tBodyGyroJerkMag - Body gyroscope jerk magnitude

fBodyAccMag - Body acceleration magnitude

fBodyAccJerkMag- Body acceleration jerk magnitude

Then after computing data set with all mean and stf values I did these computations to clean it up.

names(df4) <- sub("tBodyAccJerk", "body.linear.acceleration", names(df4))

names(df4) <- sub("BodyBody", "Body", names(df4))

names(df4) <- sub("BodyAcc", "Body.acceleration", names(df4))

names(df4) <- sub("BodyGyro", "Angular.velocity", names(df4))

names(df4) <- sub("Mag", ".Magnitude", names(df4))
