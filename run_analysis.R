# Downloaded and unzipped file from 
# https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

#-----------------------------------------------------------------------------------------
# 1.Merges the training and the test sets to create one data set. 
#-----------------------------------------------------------------------------------------

# Read 'features.txt' and 'activity_labels.txt' files
	features <- read.table('./UCI HAR Dataset/features.txt')
	activity.labels <- read.table('./UCI HAR Dataset/activity_labels.txt')
	names(activity.labels) <- c('activity','activity.labels')

# Read txt files in the 'train' folder
	x.train <- read.table('./UCI HAR Dataset/train/X_train.txt')
	subject.train <- read.table('./UCI HAR Dataset/train/subject_train.txt')
	y.train <- read.table('./UCI HAR Dataset/train/y_train.txt')

	names(x.train) <- features[,2]
	names(subject.train) <- 'subject'
	names(y.train) <- 'activity'

	train <- cbind(x.train, subject.train, y.train)

# Read txt files in the 'test' folder
	x.test <- read.table('./UCI HAR Dataset/test/X_test.txt')
	subject.test <- read.table('./UCI HAR Dataset/test/subject_test.txt')
	y.test <- read.table('./UCI HAR Dataset/test/y_test.txt')

	names(x.test) <- features[,2]
	names(subject.test) <- 'subject'
	names(y.test) <- 'activity'

	test <- cbind(x.test, subject.test, y.test)

# Merges the training and the test sets
	merged1 <- rbind(train, test)


#-----------------------------------------------------------------------------------------
# 2.Extracts only the measurements on the mean and standard deviation for each measurement
#-----------------------------------------------------------------------------------------
	meanorstd <- grep("mean()|std()", names(merged1))
	merged2 <- merged1[,c(meanorstd, 562, 563)]


#-----------------------------------------------------------------------------------------
# 3.Uses descriptive activity names to name the activities in the data set 
#-----------------------------------------------------------------------------------------
	library(plyr)
	merged3 <- arrange(join(merged2, activity.labels), activity)


#-----------------------------------------------------------------------------------------
# 4.Appropriately labels the data set with descriptive activity names. 
#-----------------------------------------------------------------------------------------
	names(merged3) <- gsub("tBody", "t.Body.", names(merged3))
	names(merged3) <- gsub("tGravity", "t.Gravity.", names(merged3))
	names(merged3) <- gsub("fBody", "f.Body.", names(merged3))
	names(merged3) <- gsub("-std()", ".std", names(merged3))
	names(merged3) <- gsub("-mean()", ".mean", names(merged3))
	names(merged3) <- gsub("-meanFreq()", ".meanFreq", names(merged3))
	names(merged3) <- gsub("-X", ".X", names(merged3))
	names(merged3) <- gsub("-Y", ".Y", names(merged3))
	names(merged3) <- gsub("-Z", ".Z", names(merged3))


#-----------------------------------------------------------------------------------------
# 5.Creates a second, independent tidy data set with the average of each variable 
#   for each activity and each subject. 
#-----------------------------------------------------------------------------------------
	library(reshape2)
	merged3.melt <- melt(merged3, id=c('subject','activity','activity.labels'))
	tidyData <- dcast(merged3.melt, subject + activity.labels ~ variable, fun.aggregate=mean)
	write.csv(tidyData, file='tidyData.txt')