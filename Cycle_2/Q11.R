# Install and load the 'igraph' package
install.packages("igraph")
library(igraph)

# Create an empty undirected graph with 7 nodes
myGraph <- graph.empty(n = 7, directed = FALSE)

# Add edges to the graph
myGraph <- add_edges(myGraph, c(1, 2, 2, 3, 2, 4, 3, 5, 5, 6, 6, 7, 7, 3, 4, 6))

# Plot the graph
plot(myGraph, main = "Undirected Graph")

# Depth-First Search (DFS) traversal from a specified vertex
dfs <- function(graph, startVertex) {
  cat("DFS traversal starting from vertex", startVertex, ": ")
  cat(startVertex, " ")
  visitedNodes <- rep(FALSE, vcount(graph))
  visitedNodes[startVertex] <- TRUE
  
  # Define a recursive function for DFS
  dfs_recursive <- function(vertex) {
    neighbors <- neighbors(graph, vertex)
    for (neighbor in neighbors) {
      if (!visitedNodes[neighbor]) {
        cat(neighbor, " ")
        visitedNodes[neighbor] <- TRUE
        # Add a check to avoid revisiting already visited nodes
        if (!visitedNodes[neighbor]) {
          dfs_recursive(neighbor)
        }
      }
    }
  }
  
  # Start DFS traversal from the specified vertex
  dfs_recursive(startVertex)
  cat("\n")
}

# Example usage of DFS function:
dfs(myGraph, 1) # Perform DFS starting from vertex 1
