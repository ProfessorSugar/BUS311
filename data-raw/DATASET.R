## code to prepare `DATASET` dataset goes here

library(tidyverse)

Funds50_raw <- readr::read_csv("data-raw/50 Largest Funds.csv")

# Add any tidying steps to this script if necessary
Funds50 <- readr::type_convert(Funds50_raw)

usethis::use_data(Funds50, overwrite = TRUE)
