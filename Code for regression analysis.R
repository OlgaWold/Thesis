
#Regression on full data

linearMod <- lm(points~ ., data=df)  # build linear regression model on full data
summary(linearMod)

#H0 is that the beta coefficients associated with the variables is equal to zero
#H1 is that the coefficients are not equal to zero.

#Reject H0, as p-value lower than 0.05
#The model is statistically significant

## 70% of dataset for training
dt = sort(sample(nrow(df), nrow(df)*.7))
train<-df[dt,]

test<-df[-dt,]

lmMod <- lm(points ~ ., data=train) 
pointPred <- predict(lmMod, test)
summary (lmMod, text= T)

# Model accuracy calculation
min_max_accuracy <- mean(apply(na.omit(actuals_preds), 1, min) / apply(na.omit(actuals_preds), 1, max))  
DMwR::regr.eval(actuals_preds$actuals, actuals_preds$pred)
