## Function makeCacheMatrix - It caches 3 Functions - 
## getInv - to get the Inverse of a matrix using solve Function
## setInv - to cache the result of the Inverse of the passed Matrix
## setOrig - to cache the original Matrix for which the Inverse is sought
## 
## Function cacheSolve - attempts to get the Inverse of the Matrix, that is passed to it as parameter.

## This function caches the Original and Inverse Matrix

makeCacheMatrix <- function(x = matrix()) {
  m_orig <<- matrix()
  getInv <- function(m){
    m2 <- solve(m)
  }
  setInv <- function(m_inv) m2 <<- m_inv
  
  setOrig <- function(m) m_orig <<- m
  
  fnc <<- list(getInv = getInv, setInv = setInv, setOrig = setOrig)  
}


## This function retrieves the Inverse of a Matrix from cache if it is already present or by making a call to the function solve   

cacheSolve <- function(m1, ...) {
  ## Return a matrix that is the inverse of 'm1'
  chk <- identical(m1, m_orig)
  if (chk==FALSE){
    print("Different Matrix. Get Inverse")
    #m1_inv <- fnc$getInv(m1)
	m1_inv <- solve(m1, ...)
    fnc$setInv(m1_inv)
    fnc$setOrig(m1)
    m2
  }
  else{
    print("get cached Data")
    m2	
  }
}