## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  r <- NULL
  set <- function(y){
    x <<- y
    r <<- NULL
  }
  get <- function()x
  setinverse <- function(inverse) r <<- inverse
  getinverse <- function() r 
  list(set = set, get = get, 
       setinverse = setinverse, 
       getinverse = getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  r <- x$getinverse()
  if(!is.null(r)){
    message("getting cached data")
    return(m)
  }
  dat <- x$get()
  r <- solve(dat,...)
  x$setinverse(r)
  r
}
