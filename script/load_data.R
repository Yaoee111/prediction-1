#### Preamble ####
# Purpose: Load some statistics for NFL quarterbacks
# Author: Yiyi Yao
# Date: 31 March 2024
# Contact: ee.yao@mail.utoronto.ca

#### Workspace setup ####
library(nflreadr)
library(dplyr)
library(readr)

#### Load data ####

# Assuming load_player_stats() has already been used to load the data into 'qb_regular_season_stats'
qb_regular_season_stats <- load_player_stats(seasons = TRUE) %>%
  filter(season_type == "REG" & position == "QB")

# Now write this data to a CSV file
write_csv(qb_regular_season_stats, "/cloud/project/data/qb_regular_season_stats.csv")
