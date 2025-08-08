# Install and load readr package
install.packages("readr")
library(readr)

# 1. Set Working Directory
# Create a new folder on your computer "AI_Omics_Internship_2025".
getwd()
# 2. Create Project Folder

# In RStudio, create a new project named "Module_I" in your "AI_Omics_Internship_2025" folder.
setwd("C:\\Users\\Admin\\Downloads\\AI_Omics_Internship_2025\\Module_I")

# Inside the project directory, create the following subfolders using R code:
# raw_data, clean_data, scripts, results or Tasks, plots etc
dir.create("raw_data")     
dir.create("clean_data")   
dir.create("scripts")
dir.create("results or Tasks")
dir.create("plots")

# 3. Download "patient_info.csv" dataset from GitHub repository

# load the dataset into your R environment
# Load CSV
patient_data <- read.csv("patient_info.csv")


# Inspect the structure of the dataset using appropriate R functions
  # View structure of the dataset
str(patient_data)
colnames(patient_data)

  # View summary statistics
summary(patient_data)

  # View first few rows
head(patient_data)

View(patient_data)

# Identify variables with incorrect or inconsistent data types.
# Convert variables to appropriate data types where needed

     # Convert categorical columns

patient_data$gender <- as.factor(patient_data$gender)
patient_data$diagnosis <- as.factor(patient_data$diagnosis)
patient_data$smoker <- as.factor(patient_data$smoker)

str(patient_data)
# Create a new variable for smoking status as a binary factor:

# 1 for "Yes", 0 for "No"
patient_data$smoking_binary <- ifelse(patient_data$smoker == "Yes", 1, 0)

# View the first few rows to confirm
head(patient_data[, c("smoker", "smoking_binary")])


# Save the cleaned dataset in your clean_data folder with the name patient_info_clean.csv
write.csv(patient_data, file = "clean_data/patient_info_clean.csv")

# Save your R script in your script folder with name "class_Ib"


# Save the entire R workspace
save.image(file = "class_Ib.RData")

# Upload "class_Ib" R script into your GitHub repository

