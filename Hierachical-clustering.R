Load dataset
weather_data <- read.csv("C:/Users/Siddharth/Downloads/seattle-weather.csv")
View(weather_data)
Select features
selected_features <- weather_data[, c("precipitation", "temp_max", "temp_min")]
Open plotting device
plot_device <- ifelse(Sys.info()["sysname"] == "Windows", windows(), ifelse(Sys.info()["sysname"] == "Darwin", quartz(), X11()))
Perform hierarchical clustering
hclust_result <- hclust(dist(selected_features))
Plot dendrogram
plot(hclust_result, main = "Dendrogram: Hierarchical Clustering", xlab = "Observations", ylab = "Distance")