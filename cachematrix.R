## Put comments here that give an overall description of what your
## functions do:This is a pair of functions that cache the inverse of a matrix.

## Write a short comment describing this function: This function creates a special "matrix" object that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
  inverse1 <- NULL
    set <- function(y){
      x <<- y
      inverse1 <<- NULL
    }
    get <- function() x
    setInverse <- function(inverse) inverse1 <<- mean
    getInverse <- function() inverse1
    list(set = set, get = get, 
         setinverse = setinverse,
         getinverse = getinverse)
}


## Write a short comment describing this function: This function computes the inverse of the special "matrix" returned by makeCacheMatrix

cacheSolve <- function(x, ...) {
  inverse2 <- x$getInverse()
  if(!is.null(inverse2)){
    message("getting cached data")
    return(inverse2)
  }
  data <- x$get()
  inverse2 <- solve(data,...)
  x$setInverse(inverse2)
  inverse2
        ## Return a matrix that is the inverse of 'x'
}
