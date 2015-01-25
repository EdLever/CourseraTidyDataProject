## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

##Creates a special "matrix" object called inv_x
##function calculates the inverse of the Matrix 
##However it first checks to see if it has already done the calculations
##if it has it simply loads the old answer from the cache 
##if it hasn't then it goes ahead and calculates the inverse  
##using the inverse function

makeCacheMatrix <- function(x = matrix()) {
  
  inv_x <- NULL
  set <- function(y){
    
    x <<- y
    inv_x <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) inv_x <<- inverse
  getinverse <- function() inv_x
  list( set = set, get = get)
  setinverse = setinverse
  gerinverse = getinverse
       
  }


## Write a short comment describing this function
## It retrives the inverse matrix from the make CachMatrix function
## if it excist, if it doesn't then it creates the inverse, and returns it


cacheSolve <- function(x, ...) {
  inv_x <-x$getinverse()
  if(!is.null(inv_x)){
    message("Got your inverse dogg!, no biggy") 
    return(inv_x)
    
  }
  data <-x$get()
  inv_x <- inverse(data, ...)
  x$setinverse(inv_x)
  return(inv_x)
}
  
  

