dat<-fread("~/medusa/papers/TWAS/intro/h2_ttest.txt")

#t=(mean1-mean2)/sqrt(se1^2+se2^2)

######### WHR #######3
# Get t statistic
#t=(mean1-mean2)/sqrt(se1^2+se2^2), Welch's t-test from Wikipedia
mean1<-dat$mean[1]
mean2<-dat$mean[2]
se1<-dat$se[1]
se2<-dat$se[2]
N1<-dat$Nsnps[1]
N2<-dat$Nsnps[2]
df<-(N1-1)+(N2-1)
t<-(mean1-mean2)/sqrt(se1^2+se2^2)

# Get degrees of freedom
sv1=se1^2
sv2=se2^2
# approximate df = (sv1^2/N1 + sv2^2/N2)^2/(sv1^4/N1^2*(N1-1)+sv2^4/N2^2*(N2-1)), Welch-Satterthwaite equation from Wikipedia
numerator=(sv1^2/N1 + sv2^2/N2)^2
denominator=sv1^4/(N1^2*(N1-1))+sv2^4/(N2^2*(N2-1))
df=numerator/denominator

# Get two-tailed p value
p<-2*pt(t,df,lower.tail=FALSE)
p
