## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
      inverse<-NULL
	getInverse <-function(){
		if(is.null(inverse)){
			message("Not cached, calculating")
			inverse <<- solve(x)
		}
		inverse
	}
	set <- function(y){
		x <<- y
		inverse <<-NULL
	}
	get <- function(){
		x
	}
	list(getInverse = getInverse, set = set, get = get)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
      ## Return a matrix that is the inverse of 'x'
	x$getInverse()
}
