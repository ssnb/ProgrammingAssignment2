## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
	## setthe value of the matrix
	i <- NULL
	set <- function(y) {
		x <<- y
		i <<- NULL
	}

	## get the value of the matrix
	get <- function() x

	## get the inverse of the matrix
	setinverse <- function(inverse) i <<-inverse
	getinverse <- function() i
	list(set = set, get = get,
		setinverse = setinverse,
		getinverse = getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
	## Return a matrix that is the inverse of 'x'

	## get the inverse of the matrix 
	i <- x$getinverse()

	## check if there is the matrix
	if (!is.null(i)) {
		message("getting cached inverse matrix")
		return(i)
	} else {
		## if not: get the inverse of the matrix 
		i <- solve(x$get())
		## set the inverse of the matrix 
		x$setinverse(i)
		return(i)
	}
}
