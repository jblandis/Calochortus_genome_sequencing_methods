#Script by Gisel De La Cerda (2022) to create bar plot distributions for APPS paper Figure 4

#Raw values as vectors
cut_tips_total <- c(12.2, 11.2, 10.03, 15.26, 8.48, 9.65, 7.44, 12.8)
cut_tips_n50 <- c(12.3, 10.34, 10.79, 8.12, 13.7, 10.5, 10, 10.24)

no_sre_total <- c(14.86, 12.31, 14.31, 6.63, 7.6)
no_sre_n50 <- c(8.48, 8.9, 10.34, 8.66, 4.26)

regular_tips_total <- c(16.15, 22.92, 8.87, 15.16, 14.86, 29.48, 12.31, 14.31, 6.63, 10.65, 7.6)
regular_tips_n50 <- c(8.9, 8.7, 8.1, 9.02, 8.48, 7, 8.9, 10.34, 8.66, 4.57, 4.26)

sre_total <- c(16.15, 22.92, 12.2, 11.2, 10.03, 15.26, 8.48, 9.65, 7.44, 12.8, 8.87, 15.16, 29.48, 10.65)
sre_n50 <- c(8.9, 8.7, 12.3, 10.34, 10.79, 8.12, 13.7, 10.5, 10, 10.24, 8.1, 9.03, 7, 4.57)

##Distributions
#Tips_total_GB
library(ggplot2)
tips_total_GB_df <- data.frame (
  name = c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19 ),
  value = c(12.2, 11.2, 10.03, 15.26, 8.48, 9.65, 7.44, 12.8, 16.15, 22.92, 8.87, 15.16, 14.86, 29.48, 12.31, 14.31, 6.63, 10.65, 7.6)
) 

p <- ggplot(tips_total_GB_df, aes(x=name, y=value, fill = factor(name))) + 
  geom_bar(stat = "identity", show.legend = FALSE) + 
  scale_fill_manual(values = c("1" = "#9932cc",
                               "2" = "#9932cc",
                               "3" = "#9932cc",
                               "4" = "#9932cc", 
                               "5" = "#9932cc",
                               "6" = "#9932cc",
                               "7" = "#9932cc", 
                               "8" = "#9932cc",
                               "9" = "gray",
                               "10" = "gray",
                               "11" = "gray",
                               "12" = "gray",
                               "13" = "gray",
                               "14" = "gray",
                               "15" = "gray",
                               "16" = "gray",
                               "17" = "gray",
                               "18" = "gray",
                               "19" = "gray"))
  
p + theme_classic()


#Tips_N50
library(ggplot2)
tips_N50_df <- data.frame (
  name = c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19 ),
  value = c(12.3, 10.34, 10.79, 8.12, 13.7, 10.5, 10, 10.24, 8.9, 8.7, 8.1, 9.02, 8.48, 7, 8.9, 10.34, 8.66, 4.57, 4.26)) 

p2 <- ggplot(tips_N50_df, aes(x=name, y=value, fill = factor(name))) + 
  geom_bar(stat = "identity", show.legend = FALSE) + 
  scale_fill_manual(values = c("1" = "#9932cc",
                               "2" = "#9932cc",
                               "3" = "#9932cc",
                               "4" = "#9932cc", 
                               "5" = "#9932cc",
                               "6" = "#9932cc",
                               "7" = "#9932cc", 
                               "8" = "#9932cc",
                               "9" = "gray",
                               "10" = "gray",
                               "11" = "gray",
                               "12" = "gray",
                               "13" = "gray",
                               "14" = "gray",
                               "15" = "gray",
                               "16" = "gray",
                               "17" = "gray",
                               "18" = "gray",
                               "19" = "gray"))

p2 + theme_classic() + ylim(0,15)

#SRE_total_GB
library(ggplot2)
SRE_total_df <- data.frame (
  name = c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19 ),
  value = c(14.86, 12.31, 14.31, 6.63, 7.6, 16.15, 22.92, 12.2, 11.2, 10.03, 15.26, 8.48, 9.65, 7.44, 12.8, 8.87, 15.16, 29.48, 10.65))
p3 <- ggplot(SRE_total_df, aes(x=name, y=value, fill = factor(name))) + 
  geom_bar(stat = "identity", show.legend = FALSE) + 
  scale_fill_manual(values = c("1" = "blue",
                               "2" = "blue",
                               "3" = "blue",
                               "4" = "blue", 
                               "5" = "blue",
                               "6" = "gray",
                               "7" = "gray", 
                               "8" = "gray",
                               "9" = "gray",
                               "10" = "gray",
                               "11" = "gray",
                               "12" = "gray",
                               "13" = "gray",
                               "14" = "gray",
                               "15" = "gray",
                               "16" = "gray",
                               "17" = "gray",
                               "18" = "gray",
                               "19" = "gray"))

p3 + theme_classic() + ylim(0,30)

#SRE_N50
library(ggplot2)
SRE_N50_df <- data.frame (
  name = c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19 ),
  value = c(8.48, 8.9, 10.34, 8.66, 4.26, 8.9, 8.7, 12.3, 10.34, 10.79, 8.12, 13.7, 10.5, 10, 10.24, 8.1, 9.03, 7, 4.57))
p4 <- ggplot(SRE_N50_df, aes(x=name, y=value, fill = factor(name))) + 
  geom_bar(stat = "identity", show.legend = FALSE) + 
  scale_fill_manual(values = c("1" = "blue",
                               "2" = "blue",
                               "3" = "blue",
                               "4" = "blue", 
                               "5" = "blue",
                               "6" = "gray",
                               "7" = "gray", 
                               "8" = "gray",
                               "9" = "gray",
                               "10" = "gray",
                               "11" = "gray",
                               "12" = "gray",
                               "13" = "gray",
                               "14" = "gray",
                               "15" = "gray",
                               "16" = "gray",
                               "17" = "gray",
                               "18" = "gray",
                               "19" = "gray"))

p4 + theme_classic() + ylim(0,15)




