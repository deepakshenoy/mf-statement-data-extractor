# Introduction
CAMS provides a [service](https://www.camsonline.com/InvestorServices/COL_ISAccountStatementCKF.aspx) to get a pdf statement with all the mutual transactions within a specified period, from most of the fund houses. I needed a way to extract the data from the pdf, and so I wrote this script to do just that.

# Instructions
1. Install R. Follow the instructions present [here](https://cran.r-project.org/).
2. Install RSudio. This is not necessary, but good to have. You can download it [here](https://www.rstudio.com/products/rstudio/download/).
3. Install the required packages either by opening R or RStudio
    1. Install [magrittr](https://github.com/tidyverse/magrittr) by running this command `install.packages('magrittr')`
    2. Install [dplyr](https://github.com/hadley/dplyr) by running this command `install.packages('dplyr')`
    3. Install [stringr](https://github.com/tidyverse/stringr) by running this command `install.packages('stringr')`
    4. Install [tabulizer](https://github.com/ropensci/tabulizer) by running this command first `install.packages('ghit')`. After this, run this command if you are on windows `ghit::install_github(c("ropensci/tabulizerjars", "ropensci/tabulizer"), INSTALL_opts = "--no-multiarch")`, or this command otherwise `ghit::install_github(c("ropensci/tabulizerjars", "ropensci/tabulizer"))`. Java needs to be present in the system for this package.
4. Download the `script.R` and `standalone-functions.R` files
5. Edit the `<filename>` and `<password>` parameters in the `script.R` file
6. Run the `script.R` file
7. The output csv files will be present in the same directory as script files
