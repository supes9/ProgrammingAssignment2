## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  m<-NULL
    set<-function(y){
      x<<-y
      m<<-NULL
    }
  setmatrix<-function(solve) m<<-solve
  
  list(set = set,
       get = get,
       setmatrix = setmatrix,
       getmatrix = getmatrix)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'

  
  if(!is.null(m)){
    message("getting the cached matrix")
    return(m)
  }

  x$setmean(m)
  m
}
