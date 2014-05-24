if (!file.exists("UCI HAR Dataset")) {
  stop("was expecting HAR Dataset folder or zip file")
}

x_train <- read.table("UCI HAR Dataset/train/X_train.txt")
x_test <- read.table("UCI HAR Dataset/test/X_test.txt")
x <- rbind(x_train,x_test)

y_train <- read.table("UCI HAR Dataset/train/y_train.txt")
y_test <- read.table("UCI HAR Dataset/test/y_test.txt")
y <- rbind(y_train,y_test)

subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt")
subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt")
subject <- rbind(subject_train,subject_test)


features <- read.table("UCI HAR Dataset/features.txt")
names(x) <- features[,2]
names(subject) <- "subject"
names(y) <- "activity"
data <- cbind(x,subject,y)


meanStdFeatures <- grepl("std\\(|mean\\(|subject|activity",names(data))
cleandata <- subset(data, select=as.vector(names(data)[meanStdFeatures]))


activity_labels <- read.table("UCI HAR Dataset/activity_labels.txt")[,2]
cleandata$activity <- sapply(cleandata$activity,function(x) activity_labels[[x]],simplify=T)


names(cleandata) <- gsub("[[:punct:]]", "", names(cleandata))


CommutativeMeanData <- aggregate(. ~ cleandata$activity + cleandata$subject,data=cleandata[1:66],FUN=mean)
colnames(CommutativeMeanData)[1] <-"activity"
colnames(CommutativeMeanData)[2] <-"subject"

write.table(CommutativeMeanData,file="tidydata.txt")