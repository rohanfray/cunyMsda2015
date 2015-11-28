nyopth <- read.csv("~/cunyMsda2015/nyopth.csv")

nyopth <- nyopth[,c(2,8,12,16,17,18,20,21,22,23,24,25,26,27,28,29)]

tophcpcs <- names((sort(table(nyopth$hcpcs_code),decreasing = TRUE))[1:10])

scores<-vector(mode="list",length = length(unique(nyopth$npi)))
names(scores) <- unique(nyopth$npi)
