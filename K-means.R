Data Mining Assignment: Clustering on Weather Dataset
Import dataset
weather_data <- read.csv("C:/Users/Siddharth/Downloads/seattle-weather.csv")
View(weather_data)
Select relevant features
selected_features <- weather_data[, c("precipitation", "temp_max", "temp_min")]
Set number of clusters
num_clusters <- 3
Perform K-Means clustering
kmeans_result <- kmeans(selected_features, centers = num_clusters)
cluster_assignments <- kmeans_result$cluster
Plot precipitation vs temp_max, colored by cluster
plot(selected_features[, c("precipitation", "temp_max")],
col = cluster_assignments,
main = "K-Means Clustering: Precipitation vs. Maximum Temperature",
xlab = "Precipitation",
ylab = "Maximum Temperature")