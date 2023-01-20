#Script by Gisel De La Cerda (2023) to create box plots in R for APPS paper Figure 4 

#Cut vs regular tips total output
cut_tips_total <- c(12.2, 11.2, 10.03, 15.26, 8.48, 9.65, 7.44, 12.8)
regular_tips_total <- c(16.15, 22.92, 8.87, 15.16, 14.86, 29.48, 12.31, 14.31, 6.63, 10.65, 7.6)

boxplot (cut_tips_total, regular_tips_total,
         col = c("#9932cc", "gray"),
         names = c("Cut", "Regular"),
         frame = F,
         ylim = c(0,30))

#Cut vs regular N50
cut_tips_n50 <- c(12.3, 10.34, 10.79, 8.12, 13.7, 10.5, 10, 10.24)
regular_tips_n50 <- c(8.9, 8.7, 8.1, 9.02, 8.48, 7, 8.9, 10.34, 8.66, 4.57, 4.26)

boxplot (cut_tips_n50, regular_tips_n50,
         col = c("#9932cc", "gray"),
         names = c("Cut", "Regular"),
         frame = F,
         ylim = c(0,15))

#SRE vs No SRE total 
sre_total <- c(16.15, 22.92, 12.2, 11.2, 10.03, 15.26, 8.48, 9.65, 7.44, 12.8, 8.87, 15.16, 29.48, 10.65)
no_sre_total <- c(14.86, 12.31, 14.31, 6.63, 7.6)

boxplot (no_sre_total, sre_total,
         col = c("blue", "gray"),
         names = c("No SRE", "SRE"),
         frame = F,
         ylim = c(0,30))

#SRE vs No SRE n50
sre_n50 <- c(8.9, 8.7, 12.3, 10.34, 10.79, 8.12, 13.7, 10.5, 10, 10.24, 8.1, 9.03, 7, 4.57)
no_sre_n50 <- c(8.48, 8.9, 10.34, 8.66, 4.26)

boxplot (no_sre_n50, sre_n50,
         col = c("blue", "gray"),
         names = c("No SRE", "SRE"),
         frame = F,
         ylim = c(0,15))


