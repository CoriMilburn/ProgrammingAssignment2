## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
##This function operates to creates a matrix to cache the inverse

makeCacheMatrix <- function(x = matrix()) {
  i <- NULL
  set <- function(y){
    x <<- y
    i <<- NULL
  }
  get <- function()x
  setinvert <- function(invert) i <<- invert
  getinvert <- function() i 
  list(set = set, get = get, setinvert = setinvert, getinvert = getinvert)
}


## Write a short comment describing this function
##This function works to compute the inverse

cacheSolve <- function(x, ...) {
  i <- x$getinvert()
  if (!is.null(i)){
    message("getting cached data")
    return(i)
  }
  data <- x$get()
  i <- solve(data, ...)
  x$setinvert(i)
  i
}
