#title "Intro R Things"

#The R equivalent of the package pandas in python is "tidyverse" 

#How to clone a repo and push things from R to GitHub:
#Go to github>go to repository>code>copy http link
#Go to R>New Proj> version control>git>paste copied link, 
#use same name as in git, and choose a folder in the third line
#Now have repo on R

#to send to git/send edits:
#Edit the document then in Upper Right box>Git>Commit>
#>Check which files>write commit message>Commit>then push bottom to send to git

#Trying this
x=2
x

#Run only once: 
instal.packages("tidyverse")
#Add this line whenever want to utilize
library(tidyverse)

#import that data
Orientation_dataset <- read.csv("~/UVA Orientation/Orientation_dataset.csv")
#view it
View(Orientation_dataset)
#reassign the variable name
ordata=Orientation_dataset
hist(ordata$CPU.Number.of.Cores..int., main="CPU Cores Survey Data", xlab="Number of Cores", col="darkgreen")

#info about histogram
?hist
#slide 44
#trying it with GGplot
#GGplot histagram
install.packages("ggplot2")                          # Install and load ggplot2
library("ggplot2")
#making the histagram
attach(ordata)
ggplot(ordata, aes(x=CPU.Number.of.Cores..int.))                           # Modify title & axis labels
  geom_histogram(color="darkgreen") +
  labs(title = "CPU Cores Survey Data",
       x = "Number of Cores",
       y = "Frequency")

