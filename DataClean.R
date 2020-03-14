install.packages("dataCompareR")
library('dataCompareR')
library(dplyr)
library(tidyr)
class(Set_1)
class(Set_2)

Set1<-data.frame(lapply(Set_1, as.character), stringsAsFactors=FALSE)
Set2<-data.frame(lapply(Set_2, as.character), stringsAsFactors=FALSE)
coerce(Set1,Set2)
comparison<-dataCompareR::rCompare(Set1,Set2, keys = 'record_id')
summary(comparison)
print(comparison)

generateMismatchData(comparison,Set_1,Set_2)

