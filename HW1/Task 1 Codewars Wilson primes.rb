require 'prime'
puts ("task 1 :")
def wilson(p)
  if  p.prime? # check if number is prime
   n =  ((1..p-1).reduce(:*) + 1) / (p * p).to_f  #count "n"
   p n
   if n % 1   == 0 # check if number is whole
       puts  "true"
     return true

   else
     p "false"
     return false
  end
 end
end
wilson(5) #
