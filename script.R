library(magrittr)
library(dplyr)
library(stringr)
library(tabulizer)

source('standalone-functions.R')

# extract data
extracted <- extract_tables_custom('<filename>', '<password>') # if there is no password, input NULL for password

# process data
processed_data <- process_data(extracted)

# write the processed data to a csv
for (one_mf in names(processed_data)) {
  write.csv(x = processed_data[[one_mf]]$purchase_data,
            file = paste0(one_mf, '.csv'),
            quote = TRUE,
            row.names = FALSE)
}
