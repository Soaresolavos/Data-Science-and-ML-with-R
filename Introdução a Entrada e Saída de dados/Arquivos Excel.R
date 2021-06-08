# > library(readxl)
# > setwd("~/Programação/First-steps/cienciaDeDados/Curso_R/R/Introdução a Entrada e Saída de dados")
# > excel_sheets('Sample-Sales-Data.xlsx')
# [1] "Sheet1"
# > df <- read_excel('Sample-Sales-Data.xlsx', sheet = 'Sheet1')
# > df
# # A tibble: 390 x 5
# Postcode Sales_Rep_ID Sales_Rep_Name  Year  Value
# <chr>           <dbl> <chr>          <dbl>  <dbl>
#   1 2121              456 Jane            2011 84219.
# 2 2092              789 Ashish          2012 28322.
# 3 2128              456 Jane            2013 81879.
# 4 2073              123 John            2011 44491.
# 5 2134              789 Ashish          2012 71838.
# 6 2162              123 John            2013 64532.
# 7 2093              456 Jane            2011 58963.
# 8 2042              789 Ashish          2012 27522.
# 9 2198              123 John            2013 77985.
# 10 2043              789 Ashish          2011 49546.
# # ... with 380 more rows
# > head(df)
# # A tibble: 6 x 5
# Postcode Sales_Rep_ID Sales_Rep_Name  Year  Value
# <chr>           <dbl> <chr>          <dbl>  <dbl>
#   1 2121              456 Jane            2011 84219.
# 2 2092              789 Ashish          2012 28322.
# 3 2128              456 Jane            2013 81879.
# 4 2073              123 John            2011 44491.
# 5 2134              789 Ashish          2012 71838.
# 6 2162              123 John            2013 64532.
# > sum(df$Value)
# [1] 19199461
# > summary(df)
# Postcode          Sales_Rep_ID Sales_Rep_Name          Year     
# Length:390         Min.   :123   Length:390         Min.   :2011  
# Class :character   1st Qu.:123   Class :character   1st Qu.:2011  
# Mode  :character   Median :456   Mode  :character   Median :2012  
# Mean   :456                      Mean   :2012  
# 3rd Qu.:789                      3rd Qu.:2013  
# Max.   :789                      Max.   :2013  
# Value        
# Min.   :  106.4  
# 1st Qu.:26101.5  
# Median :47447.4  
# Mean   :49229.4  
# 3rd Qu.:72277.8  
# Max.   :99878.5