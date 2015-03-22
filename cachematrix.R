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


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
