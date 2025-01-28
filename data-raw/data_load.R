# data_load.R

library(tidyverse)

filenames <- gsub("\\.csv$","", list.files(pattern="\\.csv$"))

for(i in filenames){
  assign(i, read.csv(paste(i, ".csv", sep="")))
  do.call("use_data", list(as.name(i), overwrite = TRUE))
}
