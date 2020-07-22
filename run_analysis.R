library(data.table)
library(readr)
library(dplyr)

# to not repeat hard-coded directory names
dataset_dir <- "UCI HAR Dataset/"
train_test_dir <- c(paste0(dataset_dir, "train/"), paste0(dataset_dir, "test/"))

if(!dir.exists(dataset_dir))
    stop("No dataset directory found")


# load features as a vector
features <- fread(paste0(dataset_dir, "features.txt"),
                  drop = 1, # ignore first column, just ordinals
                  col.names = "feature_name")$feature_name

# load subjects into a list of two vectors
# (one for training data and one for testing)
subjects <- lapply(paste0(train_test_dir,
                          c("subject_train.txt", "subject_test.txt")),
                   function(path){ fread(path, col.names = "subject")$subject })

# merge into one vector
subjects <- unlist(subjects)

# function that loads data and returns tbl_df with only columns regarding
# mean or standard deviation
read_and_select <- function(path) {
    read_fwf(path,
             col_positions = fwf_widths(rep(16, length(features)),
             col_names = features)) %>%
        # selects all columns that have 'mean' or 'std' in their names
        select(grep("mean|std", features, value = TRUE))
}

# X_mstd will be a list of tbl_dfs, where first one is from training set
# and other one from testing set
X_mstd <- lapply(paste0(train_test_dir, c("X_train.txt", "X_test.txt")),
                 read_and_select)

# combine list into a single tbl_df and add subject column
X_mstd <- tibble(rbindlist(X_mstd)) %>% mutate(subject = subjects)

# load labels for training data and testing and store as list of vectors
labels <- lapply(paste0(train_test_dir, c("y_train.txt", "y_test.txt")),
                 function(path){fread(path, col.names = "label")$label})

# merge into one vector
labels <- unlist(labels)

# read file that defines integer to name mapping for activities
activities <- fread(paste0(dataset_dir, "activity_labels.txt"),
                    col.names = c("number", "name"))

# transform activity numbers into names
labels <- factor(labels, activities$number, activities$name)

# add activity column
data <- X_mstd %>% mutate(activity = labels)

# calculate the mean of every column for every subject and activity
grouped <- data %>%
    group_by(subject, activity) %>%
    summarize(across(everything(), mean), .groups = "keep")

# rename columns (except subject and activity) to reflect
# that they are the means of original columns
names(grouped) <- c(names(grouped)[[1]], # subject and activity remain the same
                   names(grouped)[[2]],
                   sub("(.*)", "mean-of-\\1", names(grouped)[3:length(grouped)]))

# save `grouped` to a file, read with `read.table` from `readr`
write.table(grouped, file = "result.table")
