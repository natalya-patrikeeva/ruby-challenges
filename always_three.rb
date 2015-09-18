# Always 3 challenge refactored to be a method with args

def always_3(number)
	puts "Always " + (( ( number + 5 ) * 2 - 4 ) / 2 - number).to_s
end

puts "Give me a number."
number = gets.to_i
always_3(number)
