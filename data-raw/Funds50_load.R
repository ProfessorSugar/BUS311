# Funds50_load.R

library(tidyverse)

Funds50 <- readr::read_csv("data-raw/50 Largest Funds.csv")

# Add any tidying steps to this script if necessary
#shrimp <- shrimp_raw[-c(1:2),]
#colnames(shrimp) <- c("Year", "Month", shrimp_raw[1,3:10])
Funds50 <- readr::type_convert(Funds50)
usethis::use_data(Funds50, overwrite = TRUE)
