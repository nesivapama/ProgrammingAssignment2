## This Function Caches the Inverse of a Matrix:

## This function creates an object called "matrix" that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
  invr <- NULL
  set <- function(y) {
    x <<- y
    inv <<- NULL
  }
  get <- function() x
  setInverse <- function(inverse) inv <<- inverse
  getInverse <- function() inv
  list(set = set,
       get = get,
       setInverse = setInverse,
       getInverse = getInverse)
}


## This function gets the inverse of the special "matrix" created by 
## CacheMatrix above. I

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  inv <- x$getInverse()
  if (!is.null(inv)) {
    message("Getting the cached data previously")
    return(inv)
  }
  mat <- x$get()
  inv <- solve(mat, ...)
  x$setInverse(inv)
  inv
}
