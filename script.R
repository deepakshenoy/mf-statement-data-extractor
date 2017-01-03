source('functions.R')

# extract data
extracted <- extract_tables_custom(<filepath>, <password>) # if there is no password, input NULL for password

# process data
processed_data <- process_data(extracted)

# write the processed data to a csv/excel
# WIP
