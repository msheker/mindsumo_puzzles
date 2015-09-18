# Miguel Sheker 09/16/15

# Purpose: Find every integer value that can be formed using a difference of squares
# Method:  Use double for-loop in which outer loop decrements from upperbound and inner loop
#          increments from 0

##### FUNCTION #####
# Name: diffOfSq
# Desc: returns vector containing every number between min and max inclusive that can be 
#       formed using an integer difference of squares 
# Para: min >> minimum of values to test 
#       max >> maximum of values to test
# Ret:  Vector containing every integer value between min and max that can be formed through
#       a difference of squares
####################
diffOfSq<- function( min, max)
{
  result = c()
  
  # found by extracting upperbound from "x^2 - (x-1)^2"
  upper<- ceiling( .5 * max + .5)  
 
  for( i in upper:0)
  {
    for( j in 0:i)
    {
      # check if within bounds
      if( i^2 - j^2 >= min && i^2 - j^2 <= max)
      {
        result<- union( result, c( i^2 - j^2))
        # debug print
        # print( sprintf('DoS %d, I %d, J %d', i^2 - j^2, i, j))
      }
    }
  }
    
  return( result)
}

##### TESTING #####
#print( 'test1')
test1<- diffOfSq( 1, 10)

#print( 'test2')
test2<- diffOfSq( 4, 10)

final<- diffOfSq( 1, 1000)
#print( length( final))