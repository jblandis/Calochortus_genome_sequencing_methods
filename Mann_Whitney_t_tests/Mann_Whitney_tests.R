#Script by Gisel De La Cerda (2022) for statistical tests to determine the p-values of each treatment

#Tips_total output
tips_total_test <- wilcox.test(cut_tips_total, regular_tips_total, paired = FALSE, alternative = "two.sided", mu = 0.0, 
                               exact = TRUE, correct = TRUE, conf.int = TRUE, conf.level = 0.95)

#Tips_N50
tips_n50_test <- wilcox.test(cut_tips_n50, regular_tips_n50, paired = FALSE, alternative = "two.sided", mu = 0.0, 
                             exact = TRUE, correct = TRUE, conf.int = TRUE, conf.level = 0.95)

#SRE_total output
sre_total_test <- wilcox.test(sre_total, no_sre_total, paired = FALSE, alternative = "two.sided", mu = 0.0, 
                              exact = TRUE, correct = TRUE, conf.int = TRUE, conf.level = 0.95)

#SRE_n50
sre_n50_test <- wilcox.test(sre_n50, no_sre_n50, paired = FALSE, alternative = "two.sided", mu = 0.0, 
                            exact = TRUE, correct = TRUE, conf.int = TRUE, conf.level = 0.95)