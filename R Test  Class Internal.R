df <- data.frame(
  name = c(" raj","Amit","Neha","raj","Amit"),
  marks = c("80","90",NA,"85","90"),
  city = c("Pune","pune","Mumbai","PUNE","Mumbai")
)
df
# Remove extra spaces
df$name <- trimws(df$name)
df$name
# Convert names to lowercase
df$name <- tolower(df$name)
df$name
# Convert marks to numeric
df$marks <- as.numeric(df$marks)
df$marks
# Handle missing values
df$marks[is.na(df$marks)] <- mean(df$marks, na.rm = TRUE)
df$marks
# Convert city names to lowercase
df$city <- tolower(df$city)
df$city
# Create grade column
df$grade <- ifelse(df$marks >= 85, "A", "B")
df$grade
# Filter students with marks > 80
df_filtered <- df[df$marks > 80, ]
df_filtered
print(df_filtered)

# 1 & 2. Create Dataset
data <- data.frame(
  gender = c('male','female','male','female','male','female'),
  purchase = c('yes','no','yes','yes','no','yes'),
  amount = c(5000,7000,8000,6000,4000,9000)
)

print(data)

# 3. Calculate Mean of Amount
mean_amount <- mean(data$amount)
print(mean_amount)

# 4. Frequency Table for Gender
freq_gender <- table(data$gender)
print(freq_gender)

# 5. Cross Tabulation of Gender and Purchase
cross_tab <- table(data$gender, data$purchase)
print(cross_tab)

# 6. Find Total Purchase Amount
total_amount <- sum(data$amount)
print(total_amount)

# 7. Count Number of Yes Purchases
yes_count <- sum(data$purchase == "yes")
print(yes_count)

median_amount <- median(data$amount)
print(median_amount)