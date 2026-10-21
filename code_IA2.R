# Dragos Geica
# Professor J. Rose
# QAC 380
# Individual Assignment 2

# - Load the penguins.csv data set
setwd('/Users/dragosgeica/Documents/GitHub/assignment2-DG')
penguins <- read.csv('penguins.csv')

# Run at least two descriptive analyses
summary(penguins) -> summary.obj
str(penguins) -> str.obj


# Save the output in whatever format you want
save(summary.obj, file = "summaryPenguins.RData")
save(str.obj, file = "strPenguins.RData")

# run regression
model.lm <- lm(body_mass_g ~ flipper_length_mm+sex+island, data = penguins)
summary(model.lm)

#sam branch graph 
hist(
  penguins$flipper_length_mm,
  main = "Distribution of Penguin Flipper Length",
  xlab = "Flipper length (mm)",
  col = "lightblue",
  border = "white"
)