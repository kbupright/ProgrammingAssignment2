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
