## These 2 functions create a means to store and retrieve
## the cached inverse of a matrix

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


## This function checks to see if there is an inverse matrix for x
## If so, it returns the inverse matrix
## Otherwise, it sets the inverse matrix with solve and returns it

cacheSolve <- function(x, ...) {
        inv <- x$getinverse()                   # checks for inverse matrix
        if(!is.null(inv)) {                     
                message("getting cached inverse matrix")
                return(inv)                     # return inverse if not NULL
        }
        data <- x$get()                         # get the matrix
        inv <- solve(data)                      # solve for the inverse
        x$setinverse(inv)                       # set the inverse
        inv                                     # return the inverse
}
