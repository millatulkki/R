### 1 ###
#distances from dataset "eurodist" to a vector
x <- as.numeric(eurodist)
#distances to order
ordered<-sort(x)
#exclude 10 largest and 10 smallest
largest<-length(ordered)-10
excluded<- ordered[11:largest]
#calculate the sum
print(sum(excluded))

### 2 ###
#finding the difference between the max quotient and min quotient
#in data table 'cars'
#quotient = speed/distance
quotients<-c()
for(row in 1:nrow(cars)){
  quotients <- c(cars[1]/cars[2])
}
minval<-min(unlist(quotients))
maxval<-max(unlist(quotients))  
difference<-maxval-minval
print(difference)

### 3 ###
#women = data table with womens heights and weights
#convert to kg and m and fin averages
heights<-women$height
weights<-women$weight
#convert inches to meters: 1 inch = 2.54 cm = 0.0254 m
meters<-c()
for(i in 1:length(heights)){
  meters[i]<-heights[i]*0.0254
}
#pounds to kg: 1 pound = 0.45359237 kg
kgs<-c()
for(i in 1:length(weights)){
  kgs[i]<-weights[i]*0.45359237
}
#average height and weight in meters and kg
h<-sum(meters)/length(meters)
w<-sum(kgs)/length(kgs)
print(h)
print(w)

### 4 ###
#difference between largest and smallest sum of rows 
#in data set 'trees'
smallest<-min(rowSums(trees))
largest<-max(rowSums(trees))
print(largest-smallest)#103

### 5 ###
#how many letters in the vector containing city names 
#from data set 'eurodist'
#city names to a vector
x<-labels(eurodist)
sum(nchar(x))#154

### 6 ###
# how many airport names include the name 'international'
# in csv.file 'airports.csv'
data <- read.csv("airports.csv",header=T)
names<-data[["AIRPORT"]]
names[grep("International",names)]

### 7 ###
#using eurodist data set
#calculate distance for route Milan - Hamburg - Brussels - Copenhagen
matrix <- as.matrix(eurodist)
print(matrix['Milan','Hamburg']+matrix['Hamburg','Brussels']+matrix['Brussels','Copenhagen'])
