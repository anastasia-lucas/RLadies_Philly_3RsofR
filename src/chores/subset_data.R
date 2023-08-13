# split the Kaggle Barbie IMBD review data
# source: https://www.kaggle.com/datasets/ibrahimonmars/imdb-reviews-on-barbie?resource=download

rm(list = ls())

df <- read.csv(file.path("data", "raw", "imdb_barbie_Uncleaned.csv"))

j <- 1
for(i in 1:5){
  
  chunk <- df[j:((i*3000)-1), ]
  print(sprintf("Saving row %s to %s", j, ((i*3000)-1)))
  j <- i*3000
  write.csv(chunk, 
            file = paste0(file.path("data", "raw", "imdb_barbie_raw-"), i, ".csv"),
            row.names = FALSE)
}


