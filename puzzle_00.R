# Miguel Sheker 09/15/15

# Purpose: Count the number of characters in the words from one to one hundred inclusive
# Method:  First, account for one through nine.  Next, account for the tens places.  
#          For each tens place, add the values of one through nine and the tens place itself.
#          Adjust for the incorrect teens and the value 'one hundred'


#value vectors
#c( 'zero','one','two','three','four','five','six','seven','eight','nine')
digits<- c( 0, 3, 3, 5, 4, 4, 3, 5, 5, 4)
#c( 'zero','tens','twenty','thirty','forty','fifty','sixty','seventy','eighty','ninety')
decs<- c( 0, 4, 6, 6, 5, 5, 5, 7, 6, 6)

#account for odd naming by subtracting 4 from each element to account for 'teen'
#c( 'ten','eleven','twelve','thirteen','fourteen','fifteen','sixteen','seventeen','eighteen', 'nineteen')
adjustor1<- sum(c( 3, 6, 6, 8, 8, 7, 7, 9, 8, 8) - 4) 

#account for 100 
#c("one hundred)
adjustor2<- 10
result<- 0

for( pos_decs in 1:10)
{
  for( pos_digits in 1:10)
  {
     result<- result + decs[pos_decs] + digits[pos_digits]
  }
}
result<- result + adjustor1 + adjustor2
  
result

