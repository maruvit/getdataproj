#Read the training datasets and labels
xtraindata <- read.table("./train/X_train.txt")
ytraindata <- read.table("./train/y_train.txt")
subtrain <- read.table("./train/subject_train.txt")

#Read the test datasets and labels
xtestdata <- read.table("./test/X_test.txt")
ytestdata <- read.table("./test/y_test.txt")
subtest <- read.table("./test/subject_test.txt")

#Combine the testing and training datasets
data<-rbind(xtestdata,xtraindata)

#Reading the descriptive colnames provided by features.txt
labels<- read.table("features.txt")

req_label_no<-numeric()
req_label_name<-character()
req_label_name <- "Sub_No_Activity" #First col refers to descriptive row name

#Check for mean and std in column names and noting the required number and name 
for(i in 1:nrow(labels)){
    if(grepl("mean",labels[i,2])){
       req_label_no <- c(req_label_no,i)
       req_label_name <- c(req_label_name,as.character(labels[i,2]))
    }
    if(grepl("std",labels[i,2])){
        req_label_no <- c(req_label_no,i)
        req_label_name <- c(req_label_name,as.character(labels[i,2]))
    }
}

req_data<-data[,req_label_no] #Saving only the reqd columns

#Convering the activity labels into their descriptive names
for(i in 1:nrow(ytraindata)){
    if(ytraindata[i,]==1) {ytraindata[i,] <- "Walking"}
    if(ytraindata[i,]==2) {ytraindata[i,] <- "Walking Upstairs"}
    if(ytraindata[i,]==3) {ytraindata[i,] <- "Walking Downstairs"}
    if(ytraindata[i,]==4) {ytraindata[i,] <- "Sitting"}
    if(ytraindata[i,]==5) {ytraindata[i,] <- "Standing"}
    if(ytraindata[i,]==6) {ytraindata[i,] <- "Laying"}
}

for(i in 1:nrow(ytestdata)){
    if(ytestdata[i,]==1) {ytestdata[i,] <- "Walking"}
    if(ytestdata[i,]==2) {ytestdata[i,] <- "Walking Upstairs"}
    if(ytestdata[i,]==3) {ytestdata[i,] <- "Walking Downstairs"}
    if(ytestdata[i,]==4) {ytestdata[i,] <- "Sitting"}
    if(ytestdata[i,]==5) {ytestdata[i,] <- "Standing"}
    if(ytestdata[i,]==6) {ytestdata[i,] <- "Laying"}
}

#Descriptive row names - contains 3 parts separated by "_".
#First part tells whether the subject belongs to testing or training data
#Second part tells us subject number as given by subject_test or subject_train
#Third part tells us the activity

req_rownames<-character()
for(i in 1:nrow(ytestdata)){
    req_rownames<-c(req_rownames,
                    paste("Test",subtest[i,],ytestdata[i,],sep="_"))
}

for(i in 1:nrow(ytraindata)){
    req_rownames<-c(req_rownames,
                    paste("Train",subtrain[i,],ytraindata[i,],sep="_"))
}

#Use aggregate function to calculate mean of all columns, grouped by rownames
result<-aggregate(req_data,by = list(req_rownames),FUN = mean)

#Add column names to the result
colnames(result) <- req_label_name

#Write the final result into a text file
write.table(result,file = "Tidy_UCIHAR_Means.txt",row.names=FALSE)

#Thank you for your patience
