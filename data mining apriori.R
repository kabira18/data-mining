getwd()
install.packages("arules")
library(arules)
data("Groceries")
head(as(Groceries,"list"),5)


model=apriori( data=Groceries,
               parameter=list(support=0.01,
               confidence=0.10))


inspect(sort(model,by='lift')[1:10])
