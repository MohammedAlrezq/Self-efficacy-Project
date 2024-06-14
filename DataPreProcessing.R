#install.packages("tidyverse")
library(tidyverse)
#install.packages("cli")
library(cli)
#install.packages("rlang")
library(rlang)
library(psych)# for factor analysis 
library(psychTools)
library(ggplot2)
library (descstat)
library(dplyr)
library(REdaS)# to perform Bartlett’s Test of Sphericity before FA 
library(GPArotation) # required by FA 
library(GGally)
library(lavaan)# used for CFA and SEM modeling 
library(lavaanPlot)
library(semPlot)# also use to build graph for CFA, and SEM
library(caret)

#########Load the data ######################

data <- read.csv("AEMS-2019.csv")


###################Themes
plotTheme <- function() {
  theme(
    plot.title = element_text(size = 14, family = "sans", face = "plain", hjust = 0),
    plot.subtitle=element_text(size = 11, family = "sans", hjust = 0),
    plot.caption=element_text(size = 10, family = "sans", face = "italic", hjust = 0), 
    axis.title.x = element_text(size = 10, family = "sans", face = "plain", hjust = 1, vjust = -0.5),
    axis.title.y = element_text(size = 10, family = "sans", face = "plain", hjust = 1, vjust = 1),
    axis.text = element_text(size = 9, family = "sans", face = "plain"),
    panel.background = element_blank(),
    panel.grid.minor = element_line(colour = "gray"),
    panel.grid.major = element_line(colour = "gray"),
    axis.ticks = element_blank(),
    legend.title = element_text(size = 10, family = "sans"),
    legend.text = element_text(size = 9, family = "sans"),
    axis.line = element_blank()
  )
}


