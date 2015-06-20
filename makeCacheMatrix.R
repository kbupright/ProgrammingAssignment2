## This function creates 4 functions:
## set() changes the matrix stored in makeCacheMatrix()
## get() returns the matrix x stored in makeCacheMatrix()
## setinverse() sets the inverse of the matrix x stored in makeCacheMatrix()
## getinverse() returns the inverse of the matrix x stored in makeCacheMatrix()

makeCacheMatrix <- function(x = matrix()) {
        inv <- NULL                                     # set inv to NULL
        set <- function(y) {
                x <<- y                                 # change matrix x to arg
                inv <<- NULL                            # reset inv to NULL
        }

        get <- function() x                             # return x
        setinverse <- function(inverse) inv <<- inverse # set inv to argument
        getinverse <- function() inv                    # return inv (if set)

        # return a list of the functions created by makeCacheMatrix()
        list(set = set, get = get,
             setinverse = setinverse,
             getinverse = getinverse)
}