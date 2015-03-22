## Put comments here that give an overall description of what your
## functions do

## Function to create a special matrix object that can cache its inverse
#
#  returns a list of four functions:
#  set(matrix)         - use to assign a matrix to be cached
#  get()               - returns cached matrix
#  setInverse(inverse) - use to cache the inverse of the matrix
#  getInverse()        - returns the cached inverse
#
makeCacheMatrix <- function(matix = matrix()) {
  mean <- NULL

  set <- function (newMatrix) {
    matrix <<- newMatrix
    mean <<- NULL
  }
  get <- function () {
    matrix
  }
  setInverse <- function (newMean) {
    mean <<- newMean
  }
  getInverse <- function () {
    mean
  }

  list(set = set,
       get = get,
       setInverse = setInverse,
       getInverse = getInverse)
}

## Function that returns the inverse of a matrix stored as special CacheMatrix
#
#  First checks if the matrix has a cached copy of its inverse and returns that
#  If no cache exist, it solves the inverse, stores the inverse in the cache
#  and returns the computed inverse
#
cacheSolve <- function(cacheMatrix, ...) {
  inverse <- cacheMatrix$getInverse()
  if(!is.null(inverse)) {
    message("getting cached inverse")
    return(inverse)
  }

  matrix <- cacheMatrix$get()
  inverse <- solve(matrix, ...)
  cacheMatrix$setInverse(inverse)

  inverse
}
