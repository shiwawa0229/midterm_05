#load(url("https://storage.googleapis.com/r_rookies/straw_hat_df.RData"))
#this_year <- as.numeric(format(Sys.Date(), '%Y'))
#birth_year <- this_year - straw_hat_df$age
#birth_date_chr <- paste(birth_year, straw_hat_df$birthday, sep = "-")
#straw_hat_df$birth_date <- as.Date(birth_date_chr)


load(url("https://storage.googleapis.com/r_rookies/straw_hat_df.RData"))
straw_hat_df$birth_date <- Sys.Date() %>%
  format( . , '%Y')%>%
  as.numeric()%>%
  - straw_hat_df$age%>%
  paste( . , straw_hat_df$birthday, sep = "-")%>%
  as.Date()

View(straw_hat_df)




heights <- c(173, 168, 171, 189, 179)
weights <- c(65.4, 59.2, 63.6, 88.4, 68.7)
heights_and_weights <- data.frame(heights, weights)

bmi_frame <- heights_and_weights %>%
  mutate(heights_in_meter = heights / 100,
         bmi = weights / ((heights / 100)^2))

  View(bmi_frame)