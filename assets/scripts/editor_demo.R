library(tidyverse)
library(psych)

daten <- read.csv("../data/ct_data.csv", sep = ";", dec = ",")

daten %>%
  group_by(untersuchung) %>%
  summarize(schiefe_dlp = skew(dlp))
