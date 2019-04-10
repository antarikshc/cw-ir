library(igraph)
A <- matrix(c(0, 1/2, 1/2, 0, 0, 0,
              1/6, 1/6, 1/6, 1/6, 1/6, 1/6,
              1/3, 1/3, 0, 0, 1/3, 0,
              0, 0, 0, 0, 1/2, 1/2,
              0, 0, 0, 1/2, 0, 1/2,
              0, 0, 0, 1, 0, 0), nrow=6)

graph_A <- graph.adjacency( t(A), weighted = TRUE, mode="directed")
plot(graph_A)

myresult <- page.rank(graph_A)$vector
myresult

myresult <- page.rank(graph_A)
myresult