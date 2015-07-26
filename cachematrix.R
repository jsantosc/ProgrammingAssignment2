## makeCacheMatrix will store the inverse of a Matrix in a temporary variable (inverse) and return
## it if it was calculated previously

## this function will take a square matrix as parameter and will cache it's inverse value
makeCacheMatrix <- function(x = matrix()) {
	## Temp variable to store the inverse
      inverse<-NULL
	## Method to return the inverse. If the inverse is not calculated previously, it will calculate it and cache it
	getInverse <-function(){
		## if the inverse is not calculated previously, calculate it and say that to the user
		if(is.null(inverse)){
			message("Not cached, calculating")
			inverse <<- solve(x)
		}
		inverse
	}
	## Store a new matrix. Will erase the temp variable so the inverse will be calculated again
	set <- function(y){
		x <<- y
		inverse <<-NULL
	}
	## Return the original matrix whose inverse is going to be cached
	get <- function(){
		x
	}
	list(getInverse = getInverse, set = set, get = get)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
      ## Return a matrix that is the inverse of 'x'. The cache logic is on the getInverse method of
	## the makeCacheMatrix, so less code is needed and even the cacheSolve can be avoided
	x$getInverse()
}
