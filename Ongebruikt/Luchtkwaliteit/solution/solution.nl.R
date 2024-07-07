library(httr2)
library(jsonlite)
req_pm25 <- request(paste0("https://airnet.waqi.info/airnet/sse/historic/dail",
                           "y/66337?specie=pm25")) %>%
  req_headers("Accept" = "text/event-stream")
req_pm10 <- request(paste0("https://airnet.waqi.info/airnet/sse/historic/dail",
                           "y/66337?specie=pm10")) %>%
  req_headers("Accept" = "text/event-stream")
res_pm25 <- req_perform(req_pm25)
res_pm25 <- strsplit(res_pm25 %>% resp_body_string(), split = "\\n")[[1]]
res_pm10 <- req_perform(req_pm10)
res_pm10 <- strsplit(res_pm10 %>% resp_body_string(), split = "\\n")[[1]]

# Initialize an empty data frame to store the data
data <- data.frame()

for (i in seq_along(res_pm25)) {
  if (substr(res_pm25[i], 1, 12) == "data: {\"day\"") {
    row_pm25 <- jsonlite::fromJSON(substr(res_pm25[i], 7, nchar(res_pm25[i])))
    row_pm10 <- jsonlite::fromJSON(substr(res_pm10[i], 7, nchar(res_pm10[i])))

    data <- rbind(data, c(row_pm25$day,
                          row_pm25$median,
                          row_pm10$median))
  }
}
colnames(data) <- c("datum", "pm25", "pm10")

data$datum <- as.Date(data$datum, "%Y-%m-%d")
data$pm25 <- as.numeric(as.character(data$pm25))
data$pm10 <- as.numeric(as.character(data$pm10))
data <- data[order(data$datum, decreasing = TRUE), ]
rownames(data) <- seq_len(nrow(data))

# Antwoorden
data$aqi_pm25 <- round(data$pm25 / 25 * 100)
data$aqi_pm10 <- round(data$pm10 / 50 * 100)
