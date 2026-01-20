library(dplyr) 
library(ggplot2)
library(gridExtra)

load(here::here("data", "clean.Rdata"))

edu_diabetes <- df %>%
  group_by(education, diabetes_status) %>%
  summarise(count = n(), .groups = "drop") %>%
  group_by(education) %>%
  mutate(percentage = count / sum(count) * 100)

# plot: diabetes prevalence by education level
p1 <- ggplot(edu_diabetes, aes(x = education, y = percentage, fill = diabetes_status)) +
  geom_bar(stat = "identity") +
  labs(title = "Diabetes Prevalence by Education Level",
       x = "Education Level",
       y = "Percentage (%)",
       fill = "Diabetes Status") +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1)) +
  scale_fill_manual(values = c("#A8DADC", "#D8BFD8", "#E0C9A6"))

# plot: income distribution by diabetes status
p2 <- ggplot(df, aes(x = INDFMPIR, fill = diabetes_status)) +
  geom_density(alpha = 0.6) +
  labs(title = "Income Distribution by Diabetes Status",
       x = "Income-to-Poverty Ratio",
       y = "Density",
       fill = "Diabetes Status") +
  theme_minimal() +
  scale_fill_manual(values = c("#A8DADC", "#D8BFD8", "#E0C9A6"))

grid.arrange(p1, p2, ncol = 2)