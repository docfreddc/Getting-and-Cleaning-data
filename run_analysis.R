cleandata <- function(base_folder, test_folder,train_folder){
  ## read in labels
  setwd(base_folder)
  labels <- read.table("features.txt")
  activity_map <- read.table("activity_labels.txt")
  ## read in training data
  setwd(train_folder)
  train_data <- read.table("X_train.txt", header = FALSE)
  ## read in training data activities
  train_act <- read.table("Y_train.txt", header = FALSE)
  ## read in training subject info
  train_sub_info <- read.csv("subject_train.txt", header = FALSE)
  ## map activity numbers to activity labels
  train_act$act_label <- activity_map$V2[match(train_act$V1,activity_map$V1)]
  ## read in test data
  setwd(test_folder)
  test_data <- read.table("X_test.txt", header = FALSE)
  ## read in test data activities
  test_act <- read.table("Y_test.txt", header = FALSE)
  ## read in test subject info
  test_sub_info <- read.csv("subject_test.txt", header = FALSE)
  ## map activity numbers to activity labels
  test_act$act_label <- activity_map$V2[match(test_act$V1,activity_map$V1)]
  ## combine data
  all_data <- rbind(train_data,test_data)
  all_sub <- rbind(train_sub_info,test_sub_info)
  all_act <- rbind(train_act, test_act)
  ## add header to data
  names(all_data) <- labels[,2]
  ## create subset of columns with mean values
  mean_data <- all_data[ , grepl( "mean" , names(all_data) ) ]
  std_data <- all_data[ , grepl( "std" , names(all_data) ) ]
  ## remove columns title meanFreq
  mean_data <- mean_data[ , !grepl( "meanFreq()" , names(mean_data) ) ]
  ## combine data
  mean_std_data <- cbind(mean_data,std_data)
  ## add subject info to training data
  mean_std_data$subject <- all_sub[,1]
  ## activity info to training data
  mean_std_data$activity <- all_act[,2]
  ## create tidy data with average values by subject and activity
  ## aggregate columns
  tidy_data <- aggregate(.~subject+activity, data=mean_std_data, mean, na.rm=TRUE)
  write.table(tidy_data,"tidydata.txt",row.names = FALSE)}
