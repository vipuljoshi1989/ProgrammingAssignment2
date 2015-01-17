## Put comments here that give an overall description of what your
## The assignment requires us to write a program in R that shall calculate the inverse of the matrix and then cache it.
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
# holds the cached value. Incase of no cache default value is NULL
cache <- NULL

# store the matrix
setMatrix <- function(newValue) {
        x <<- newValue
        cache <<- NULL
}

# returns the stored matrix
getMatrix <- function(){
        x
}

 # cache the given argument 
 cacheInverse <- function(solve) {
        cache <<- solve
}
        
# get the cached value
getInverse <- function() {
        cache
}

# return a list. Each named element of the list is a function
list(setMatrix = setMatrix, getMatrix = getMatrix, cacheInverse = cacheInverse, getInverse = getInverse)
}


## Write a short comment describing this function

# The following function calculates the inverse of a "special" matrix created with makeCacheMatrix
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        
# get the cached value
inverse <- x$getInverse()

# if a cached value exists return it
if(!is.null(inverse)) {
         message("getting data from cache")
         return(inverse)
}

# otherwise get the matrix, caclulate the inverse and store it in the cache
data <- x$getMatrix()
inverse <- solve(data)
x$cacheInverse(inverse)

# return the inverse
inverse
}
