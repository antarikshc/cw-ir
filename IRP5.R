require("tm")
my.corpus <- Corpus(DirSource("/home/antariksh/00_DATA/TYCS/Practical/IR/temp"))
getTransformations
my.corpus <- tm_map(my.corpus, removePunctuation)
my.corpus <- tm_map(my.corpus, removeWords, stopwords("end"))
save.image(file="work.RData")
View(my.corpus)
work = load("/home/antariksh/work.RData")
head(work)