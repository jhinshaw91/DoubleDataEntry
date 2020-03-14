install.packages("dataCompareR")
library('dataCompareR')
library(dplyr)
library(tidyr)
library(knitr)
library(stringi)
library(markdown)
library(devtools)
install_git('https://github.com/capitalone/dataCompareR.git', branch = 'master',
            subdir = 'dataCompareR', type = 'source', repos = NULL,
            build_vignettes = TRUE)

Set1<-data.frame(lapply(Set_1, as.character), stringsAsFactors=FALSE)
Set2<-data.frame(lapply(Set_2, as.character), stringsAsFactors=FALSE)

compSets <- rCompare(Set1, Set2, keys = 'record_id')

summary(compSets)

print(compSets)

mismatches <- generateMismatchData(compSets, Set1, Set2)

mismatches

saveReport(compSets, reportName = 'testReport')






