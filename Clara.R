Load required library
if (!requireNamespace("cluster", quietly = TRUE)) install.packages("cluster")
library(cluster)
Import dataset
weather_data <- read.csv("C:/Users/Siddharth/Downloads/seattle-weather.csv")
View(weather_data)
Select features
selected_features <- weather_data[, c("precipitation", "temp_max", "temp_min")]
Set number of clusters and sample size
num_clusters <- 3
sample_size <- 100
Perform CLARA clustering
clara_result <- clara(selected_features, num_clusters, sampsize = sample_size)
cluster_assignments <- clara_result$clustering
Plot precipitation vs temp_max, colored by cluster
plot(selected_features[, c("precipitation", "temp_max")],
col = cluster_assignments,
main = "CLARA Clustering: Precipitation vs. Maximum Temperature",
xlab = "Precipitation",
ylab = "Maximum Temperature")
Add cluster medoids
points(selected_features[clara_result$medoids, c("precipitation", "temp_max")],
col = 1:num_clusters,
pch = 8,
cex = 2)