## Put comments here that give an overall description of what your
## functions do

##Matrix object  caches its inverse

makeCacheMatrix <- function(x = matrix()) {

## state inverse property
  l <- NULL
  
##set matrix x
  set <- function(m){
    x <- m
    l <- NULL
  }
  
##get matrix x
  get <- function(){
    x
  }
  
##set inverse matrix of x
  setInverse <- function(L){
   l <- L 
  }
  
##get inverse matrix of x
  getInverse <- function(){
    l
  }
  
  list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}




## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  
  InversionMatrix <- x$getInverse()
  
  
  if (is.null(InversionMatrix)){
    message('calculating inverse')
    
## calculating the inverse if it hasn't been calculated yet
    
    data <- x$get()
    InversionMatrix <- solve(data, ...)
    x$setInverse(InversionMatrix)
    
  } else {
    message('Inverse is cached')
  }
  
  InversionMatrix
}
