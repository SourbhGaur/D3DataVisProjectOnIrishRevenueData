#### Mini-Project - Data Visualisation 
## code to segregate the data file from Data.gov.ie into 4 files based on Year

# Importing the Dataset.
net.receipts.by.county <- read.csv("C:/Users/Emoshan/Downloads/net-receipts-by-county.csv")

# Change the column name
colnames(net.receipts.by.county) <- c("State","Year","Vat_MillionEuro",
                                      "Paye_Income_Tax_MillionEuro","Self_Employed_MillionEuro",
                                      "Corporate_Tax_MillionEuro","Capital_Gain_MillionEuro")

#Segregation based on year 
year2011 <- net.receipts.by.county[net.receipts.by.county$Year == "2011",]
year2012 <- net.receipts.by.county[net.receipts.by.county$Year == "2012",]
year2013 <- net.receipts.by.county[net.receipts.by.county$Year == "2013",]
year2014 <- net.receipts.by.county[net.receipts.by.county$Year == "2014",]

#Writng into csvs (used in Visulisation)
write.csv(year2011,file = "year2011.csv",row.names = FALSE)
write.csv(year2012,file = "year2012.csv",row.names = FALSE)
write.csv(year2013,file = "year2013.csv",row.names = FALSE)
write.csv(year2014,file = "year2014.csv",row.names = FALSE)
