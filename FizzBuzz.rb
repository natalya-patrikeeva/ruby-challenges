# FizzBuzz challenge. Program that prints the numbers 1..100
# prints Fizz for multiples of 3,
# prints Buzz for multiples of 5,
# prints FizzBuzz for multiples of both 3 and 5.

array = Array(0..100)
 
array.each do |i|
	if (i % 3 == 0 && i % 5 == 0)
		i = "FizzBuzz"
	elsif (i % 3 == 0)
		i = 'Fizz'
	elsif (i % 5 == 0)
		i = "Buzz"

	end

	puts i 	
end
