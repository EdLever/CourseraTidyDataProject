# CourseraTidyDataProject
Hello
I will explain all the series of commands from my Project via lines
1 Library(dpylr) to download the dpylr package so I can use it for further analysis 
3-8 I downloaded all the data from the download to their appropriate dataframes, they include X_train,X_test, y_train, y_test
subject_test, subject_train
10 I column binded subject_test, y_test and  X_test into one data set called test
11 I column binded subject_train, y_train and  X_train into one data set called train
12 I finally row binded test and train together into a data set called df

15 I downloaded the column names data set into a datafram called features.
16 I converted the dataset into a list of characters so I could isolate the column names
17 I again converted that new list into a list of names using the make.names function
18 finally I assigned the new column names to the df data base, so now I have a tidy data set ready for analysis

20 I had to isolate the columns which had the words "mean" and "std" therefore I used the select command from dylr to extract 
all columns which had both those names within it to a data frame called df2
21 I downloaded the activity labels from the download package and assign it to the activity_label variable
22 I then added the appropriate column names to the activity labels data frame
23 I then assigned the appropriate activity label corresponting to its numeric equivalent using the merge command, this
combinded the df2 and activity_label data.frame into a new datafram I called df3
24 I finally created the final tidy set data frame which had  the average of each variable for each activity and each subject I
used the group_by function with the summerize function from dylr to achieve this. This became df4

26-30 To tidy up the new df4, removed the short hand expressions in the column names like, Acc,Gyro and Mag to their full
hand names to that it could be uunderstood more clearly.

And that was it.

