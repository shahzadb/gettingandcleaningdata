 #run_analysis function assumes UCI HAR Dataset folder is in work directory
 run_analysis <- function()
 {
 #read all feature names from features.txt
features = read.table("./UCI HAR Dataset/features.txt") 

#read X,y and subject test set 
X_test = read.table("./UCI HAR Dataset/test/X_test.txt")
y_test = read.table("./UCI HAR Dataset/test/y_test.txt")
subject_test = read.table("./UCI HAR Dataset/test/subject_test.txt")

#read X,y and subject training set
X_train = read.table("./UCI HAR Dataset/train/X_train.txt")
y_train = read.table("./UCI HAR Dataset/train/y_train.txt")
subject_train = read.table("./UCI HAR Dataset/train/subject_train.txt")

#read activity labels
activity = read.table("./UCI HAR Dataset/activity_labels.txt")

#get logical index for subset of features "mean", "std" values 
ix = grepl("-mean()", features$V2) | grepl("-std()", features$V2) # logical feature index to subset features (i.e. mean()/std() mean and standard deviation features) 

subFeatures = features[ix, ] # subset feature vector
subFeatureNames = as.vector(subFeatures$V2) #vectorized 

#making feature names descriptive 
subFeatureNames = tolower(subFeatureNames) # to lower case
subFeatureNames = gsub("-x","Xaxis",subFeatureNames)
subFeatureNames = gsub("-y","Yaxis",subFeatureNames)
subFeatureNames = gsub("-z","Zaxis",subFeatureNames)
subFeatureNames = gsub("-","",subFeatureNames) # remove "-" or "()"
subFeatureNames = gsub("\\()","", subFeatureNames)
subFeatureNames = gsub("body","Body", subFeatureNames)
subFeatureNames = gsub("gyro", "Gyro", subFeatureNames)
subFeatureNames = gsub("mag", "Magnitude", subFeatureNames)
subFeatureNames = gsub("jerk", "Jerk", subFeatureNames)
subFeatureNames = gsub("acc", "Acceleration", subFeatureNames)
subFeatureNames = gsub("mean", "Mean", subFeatureNames)
subFeatureNames = gsub("std", "StandardDeviation", subFeatureNames)
subFeatureNames = gsub("freq", "Frequency", subFeatureNames)
subFeatureNames = gsub("()","", subFeatureNames)
subFeatureNames = gsub("^t","timeDomain", subFeatureNames)
subFeatureNames = gsub("^f","frequencyDomain", subFeatureNames)



#subset training and test set for subset features (i.e. mean, std values only)
subX_train = X_train[,ix]  # subset X training set based on subset feature columns 
subX_test =  X_test[,ix]   # subset x test set based on subset feature columns

# setting feature names 
names(subX_train) = subFeatureNames   # set feature names 
names(subX_test) =  subFeatureNames   # set feature names 

#replace numeric activity labels with descriptives values
y_train$V1 = activity$V2[match(y_train$V1, activity$V1)]
y_test$V1 = activity$V2[match(y_test$V1, activity$V1)]


#replace alpha-numeric column name with descriptive column name "activity" for activity label
names(y_train) = "activity"
names(y_test) =  "activity"

#replace alpha-numeric column name with descriptive column name "subject" for subject data
names(subject_train) = "subject"
names(subject_test) = "subject"
 
#column bind training set
complete_train = cbind(subX_train, y_train, subject_train)
complete_test = cbind(subX_test, y_test, subject_test)

#merge complete training and test set as one
merged_data = merge(complete_train, complete_test, all=TRUE)

#melting intermediate merged dataset to reshape
library(reshape2)
melted = melt(merged_data, id=c("subject", "activity"), measure.vars=subFeatureNames)

#reshaped tidy
tidy = dcast(melted, subject + activity ~ variable, mean) 

#writing dataframe
write.table(tidy, "tidy.txt")
print("tidy.txt successfully created")
return(tidy)
}