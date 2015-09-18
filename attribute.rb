# Refactor First Object challenge to use attribute accessors
class Pizza
	attr_accessor :topping, :sauce
	
end

my_pizza = Pizza.new
my_pizza.topping = "Cheese"
my_pizza.sauce = "Tomato"
pizza_topping = my_pizza.topping
pizza_sauce = my_pizza.sauce

puts my_pizza.inspect

puts "Custom-made #{pizza_topping} pizza with #{pizza_sauce} sauce."
