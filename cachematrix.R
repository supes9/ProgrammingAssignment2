## Put comments here that give an overall description of what your
## functions do

## This function takes a matrix and saves the inverse to
## cache using the <<- and the solve()

makeCacheMatrix <- function(x = matrix()) {
  m<-NULL
    set<-function(y){
      x<<-y
      m<<-NULL
    }
  get<-function()x
  setmatrix<-function(solve) m<<-solve
  getmatrix<-function()m
  
  list(set = set,
       get = get,
       setmatrix = setmatrix,
       getmatrix = getmatrix)

}


## This fuction takes the matrix and sees if there is an inverse
## already in the cache and returns that if there is one, otherwise it solves matrix

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'

  m <- x$getmatrix()
  
  if(!is.null(m)){
    message("getting the cached matrix")
    return(m)
  }

  matrix <- x$get()
  m <- solve(matrix, ...)
  x$setmean(m)
  m
}
