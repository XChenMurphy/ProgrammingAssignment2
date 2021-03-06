## The fullowing pair of functions will cache the inverse of a matrix.

## This function creates a special "matrix" object that can cache its inverse

makeCacheMatrix <- function(x = matrix()) {
	m <- NULL
	set <- function(y){
	x <<- y
	m <<- NULL
	}
	get <- function()x
	setinverse <- function(solve) m <<- solve
	getinverse <- function() m
	list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)
}


## This function computes the inverse of the special "matrix" returned by makeCacheMatrix above.

cacheSolve <- function(x, ...) {
	    m <- x$getinverse()
	    data <- x$get()
	    m <- solve(data, ...)
	    x$getinverse(m)
	    m
	    
        ## Return a matrix that is the inverse of 'x'
}
