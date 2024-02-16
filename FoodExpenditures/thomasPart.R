
library(tidyverse)
library(nlme)
library(multcomp)
library(GGally)
library(MASS)
library(car)
food = read_delim("FoodExpenses.txt", delim=" ")



hetero_sked = gls(data = food, EatingOut ~ Income, weights = 
                    varExp(form=~Income), method="ML")
coef = hetero_sked$coefficients

#hetero_sked$fitted
 
fits = hetero_sked$fitted
summary(hetero_sked)
