## the following functions, in conjunction, allow you to cache the inverse of a matrix

## this function creates allows you to store a matrix in the object and cache the inverse
makeCacheMatrix <- function(x = matrix()) {
        i <- NULL
        set <- function(y) {
                x <<- y
                i <<- NULL
        } 
        get <- function() x
        setinverse <- function(inverse) i <<- inverse
        getinverse <- function () i 
        list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)
}

## This function takes the makeCacheMatrix object as an argument and returns the
## inverse of the matrix (i) if it already exists, otherwise it calculated the 
## inverse and returns it.

cacheSolve <- function(x, ...) {
        i <- x$getinverse()
        if (!is.null(i)) {
                message("getting cached data")
                return(i)
        }
        data <- x$get()
        i <- solve(data, ...)
        x$setinverse(i)
        i
}

