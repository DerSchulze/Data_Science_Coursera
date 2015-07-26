#Loading Lables
lable_activity <- read.table("UCI HAR Dataset/activity_labels.txt")
lable_features <- read.table("UCI HAR Dataset/features.txt")

#Loading Test-Values
test_activity <- read.table("UCI HAR Dataset/test/y_test.txt")
test_values <- read.table("UCI HAR Dataset/test/x_test.txt")
test_subject <- read.table("UCI HAR Dataset/test/subject_test.txt")

#Labeling Test-Data
names(test_values) <- lable_features[,2]

#Subsetting the Means and STDs 
test_values_sub <- test_values[, colnames(test_values)[grep("mean|std", colnames(test_values))]]

#Combine Test-Data
Test_Data <- cbind(test_subject, test_activity, test_values_sub)
colnames(Test_Data)[1:2] <- c("Subject", "Activity")                               
Test_Data$Activity <- factor(Test_Data$Activity, labels = lable_activity[,2])

#Loading Train-Values
train_activity <- read.table("UCI HAR Dataset/train/y_train.txt")
train_values <- read.table("UCI HAR Dataset/train/x_train.txt")
train_subject <- read.table("UCI HAR Dataset/train/subject_train.txt")

#Labeling Train-Data
names(train_values) <- lable_features[,2]

#Subsetting Means and STDs
train_values_sub <- train_values[, colnames(train_values)[grep("mean|std", colnames(train_values))]]

#Combine Train-Data
train_Data <- cbind(train_subject, train_activity, train_values_sub)
colnames(train_Data)[1:2] <- c("Subject", "Activity")                               
train_Data$Activity <- factor(train_Data$Activity, labels = lable_activity[,2])

#Combine the complete Dataset
Data <- rbind(Test_Data, train_Data)
Data <- Data[order(Data$Subject),]

#Filtering for Group-Comparison
Data_New <- aggregate(. ~ Subject + Activity, data = Data, FUN = mean)
colnames(Data_New)[3:81] <- paste("Group_Mean", colnames(Data_New)[3:81], sep = "_")
Data_New <- Data_New[order(Data_New$Subject),]
rownames(Data_New) <- seq(length=nrow(Data_New))

#Printing the Script
write.table(Data_New, file="run_analysis.txt", row.names = FALSE)
