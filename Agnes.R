Import dataset
weather_data <- read.csv("C:/Users/Siddharth/Downloads/seattle-weather.csv")
View(weather_data)
Load required library
if (!requireNamespace("cluster", quietly = TRUE)) install.packages("cluster")
library(cluster)
Select features
selected_features <- weather_data[, c("precipitation", "temp_max", "temp_min")]
Perform agglomerative hierarchical clustering
agnes_result <- agnes(selected_features)
Plot dendrogram
plot(agnes_result, main = "Dendrogram: Agglomerative Hierarchical Clustering")