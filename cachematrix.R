## This function can calculate and cache the inverse of a matrix


## This function creates a special matrix and caches the inverse

makeCacheMatrix <- function(x = matrix()) {
  
  m <- NULL
  set <- function(y){
    
    x <<- y
    m <<- NULL
  }
  
  get <- function()x
  setmatrix <- function(solve) m <<- solve
  getmatrix <- function() m
  list(set = set, get = get,
       setmatrix = setmatrix,
       getmatrix = getmatrix)
}


## This function can compute the inverse of the matrix created. However, if it has already been solved it
## will retrieve the cached inverse. 

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  m <- x$getmatrix()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setmatrix(m)
  m
}
