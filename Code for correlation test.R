#Check the assumptions

#H0: the data is normally distributed
#H1: the data is not normally distributed

ad.test(DataFrame$needed_column_1) # Non-normal or normal distribution
ad.test(DataFrame $ needed_column_2) # Non-normal or normal distribution

# Use spearman, for non-parametric correlation (non-normal distribution)

cor.test(DataFrame $ needed_column_1, DataFrame $ needed_column_2, method = 'pearson/spearman') 
