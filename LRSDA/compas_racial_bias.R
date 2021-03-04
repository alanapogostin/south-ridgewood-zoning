library(tidyverse)

decision_tree_output <- read_csv("~/Desktop/LRSD/assignment_1/decision_tree_output.csv")

decision_tree_output_1 <- decision_tree_output %>%
  select(race, rate) %>%
  group_by(race) %>%
  summarize(mean_rate = mean(as.numeric(rate)))
decision_tree_output_2 <- decision_tree_output %>%
  select(race, rate) %>%
  summarize(mean_rate = mean(as.numeric(rate)))

compas <- read_csv("~/Desktop/LRSD/assignment_1/COMPAS.csv")

compas_1 <- compas %>%
  select(race, rate) %>%
  group_by(race) %>%
  summarize(mean_rate = mean(as.numeric(rate)))
compas_2 <- compas%>%
  select(race, rate) %>%
  summarize(mean_rate = mean(as.numeric(rate)))

random_forest <- read_csv("~/Desktop/LRSD/assignment_1/random_forest.csv")

random_forest_1 <- random_forest %>%
  select(race, rate) %>%
  group_by(race) %>%
  summarize(mean_rate = mean(as.numeric(rate)))
random_forest_2 <- random_forest%>%
  select(race, rate) %>%
  summarize(mean_rate = mean(as.numeric(rate)))