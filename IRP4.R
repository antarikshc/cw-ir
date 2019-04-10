require("tm")
my.corpus <- Corpus(DirSource("/home/antariksh/00_DATA/TYCS/Practical/IR/temp"))
getTransformations

my.corpus <- tm_map(my.corpus, removePunctuation)
my.corpus <- tm_map(my.corpus, removeWords, stopwords("english"))
require("SnowballC")
my.corpus <- tm_map(my.corpus, stemDocument)
save.image(file="work.RData")
my.tdm <- TermDocumentMatrix(my.corpus)
inspect(my.tdm)

View(my.corpus)
findFreqTerms(my.tdm, 2)

findAssocs(my.tdm, 'work', 0.20)

findAssocs(my.tdm, 'test', 0.20)

my.df <- as.data.frame(inspect(my.tdm))
my.df.scale <- scale(my.df)
d<-dist(my.df.scale, method = "euclidean")
fit <- hclust(d, method = "ward.D")
plot(fit)