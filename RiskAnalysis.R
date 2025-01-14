library(quantmod)
library(ks)

########################-------------IBM--------------#####################
tickers = c("IBM")
quantmod::getSymbols(tickers)
head(IBM)

IBM$ibm_r <- ROC(IBM$IBM.Close)
IBM <- cbind(IBM$IBM.CLose, IBM$ibm_r)
stocks <- last(IBM, '500 days')
plot(stocks$ibm_r)

####-------Delta Normal Approach---------####
mean(stocks$ibm_r)*100
var(stocks$ibm_r)
sd(stocks$ibm_r)*100
qnorm(0.01, mean = 0, sd = 1)

qnorm(0.05, mean=0, sd= 1)

####--------Historic Approach--------####
historic <- sort(as.numeric(stocks$ibm_r)*100, decreasing=FALSE)
historic[6]
historic[26]

####---Histogram of Last 500 Days---####
hist(stocks$ibm_r, main = 'Historical IBM Returns', xlab = 'Daily Returns')
density(stocks$ibm_r)

####-----------Monte Carlo----------####
Est.IBM <- rkde(fhat=kde(stocks$ibm_r, h=0.002499), n=10000)
hist(Est.IBM, breaks=50, main = 'KDE of Historical IBM Daily Returns',
     xlab = 'Daily Returns')

est1 <- quantile(Est.IBM, 0.01)*100
est1

est5 <- quantile(Est.IBM, 0.05)*100
est5