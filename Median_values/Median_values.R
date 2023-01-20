#Script by Gisel De La Cerda (2022) to calculate the median values of total output (GB) and N50 (kb) for each treatment

median_cut_tips_n50 <- median(c(12.3, 10.34, 10.79, 8.12, 13.7, 10.5, 10, 10.24))

median_cut_tips_total <- median(c(12.2, 11.2, 10.03, 15.26, 8.48, 9.65, 7.44, 12.8))

median_regular_tips_N50 <- median(c(8.9, 8.7, 8.1, 9.02, 8.48, 7, 8.9, 10.34, 8.66, 4.57, 4.26))

median_regular_tips_total <- median(c(16.15, 22.92, 8.87, 15.16, 14.86, 29.48, 12.31, 14.31, 6.63, 10.65, 7.6))

median_sre_n50 <- median(c(8.9, 8.7, 12.3, 10.34, 10.79, 8.12, 13.7, 10.5, 10, 10.24, 8.1, 9.03, 7, 4.57))

median_sre_total <- median(c(16.15, 22.92, 12.2, 11.2, 10.03, 15.26, 8.48, 9.65, 7.44, 12.8, 8.87, 15.16, 29.48, 10.65))

median_no_sre_n50 <- median(c(8.48, 8.9, 10.34, 8.66, 4.26))

median_no_sre_total <- median(c(14.86, 12.31, 14.31, 6.63, 7.6))