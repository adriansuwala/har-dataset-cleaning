# Human Activity Recognition Using Smartphones

Repository contains processed data from original UCI ML dataset:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

## Changes
- Training and testing data are merged together.
- Dataset contains averages of all columns regarding mean or standard deviation from the original dataset grouped by subject and activity.

## Content
- `run_analysis.R` is a script that performs all the transformations on the original dataset. Has comments explaining what it does.
- `CodeBook.md` explains what transformations were done on original columns.
- `README.md` this file describes what is in the repository.

## Comments about script
- Uses `tbl_df` class from `dplyr` and `readr` to perform operations in a more readable manner (`%>%`).
- Uses `lapply` to execute loading function on a vector `(path-to-training-file, path-to-test-file)`. Returns a list where first element has data from training set and second from testing set (for labels both elements are vectors, for features, both are `tbl_df`s)
- `unlist` collapses list of vectors into a one vector
- `rbindlist` combines list of `tbl_df`s into a data frame
- `tibble` is just a new function to create `tbl_df` (`tbl_df()` is deprecated)
