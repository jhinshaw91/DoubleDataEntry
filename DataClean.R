install.packages("dataCompareR")
library('dataCompareR')
library(dplyr)
library(tidyr)

comparison<-dataCompareR::rCompare(Set_1,Set_2, keys = 'record_id')
summary(comparison)
print(comparison)

generateMismatchData(comparison,Set_1,Set_2)

