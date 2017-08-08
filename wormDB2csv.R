#another package:
#library(xlsx)

#backed up to github: https://github.com/jsemple19/WORMS.git


#setwd("~/Documents/MeisterLab")
setwd("/Volumes/izb_groups/Meister/Stock/WORMS")

xlsxFile<-"WormStrainFrozenStocks.xlsx"

# note readxl is much faster but gdata maintains format of columns with date much better, readxl
# converts dates to number.

library(gdata)
mySheets<-sheetNames(xlsxFile)
for (i in 2:8) {
    df = read.xls (xlsxFile, sheet = i, header = TRUE,skip=1)
    write.csv(df,file=paste0("csv/",mySheets[i],".csv"))
 }



# library(readxl)
# mySheets<-excel_sheets(xlsxFile)
#
# for (i in 2:8) {
#    df = read_excel(xlsxFile, sheet = 4, skip=1, col_names=TRUE)
#    write.csv(df,file=paste0(mySheets[i],".csv"))
# }


