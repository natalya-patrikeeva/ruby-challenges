# My first class object
class Dinner

	attr_accessor :meat, :topping, :sauce
end


class Pizza < Dinner

	def cooking_time
		return "30 min"		
	end
	
end

class Lasagna < Dinner
	def cooking_time
		return "50 min"
	end
end

class Pasta < Dinner
	def cooking_time
		return "10 min"
	end
		
end

my_pizza = Pizza.new
my_pizza.meat = "Italian sausage"
my_pizza.topping = "Cheese"
my_pizza.sauce = "White"

pizza_meat = my_pizza.meat
pizza_topping = my_pizza.topping.downcase
pizza_sauce = my_pizza.sauce.downcase

my_pasta = Pasta.new
my_pasta.meat = "Shrimp"
my_pasta.topping = "Parmesan cheese"
my_pasta.sauce = "Creole"

pasta_meat = my_pasta.meat.downcase
pasta_topping = my_pasta.topping.downcase
pasta_sauce = my_pasta.sauce

my_lasagna = Lasagna.new
my_lasagna.meat = "Ground beef"
my_lasagna.topping = "Three cheeses"
my_lasagna.sauce = "Tomato"

lasagna_meat = my_lasagna.meat.downcase
lasagna_topping = my_lasagna.topping.downcase
lasagna_sauce = my_lasagna.sauce.downcase


puts "Pizza with #{pizza_meat}, #{pizza_topping}, and #{pizza_sauce} sauce. Cooking time = #{my_pizza.cooking_time}."
puts "Pasta with #{pasta_meat}, #{pasta_topping}, and #{pasta_sauce} sauce. Cooking time = #{my_pasta.cooking_time}."
puts "Lasagna with #{lasagna_meat}, #{lasagna_topping} and #{lasagna_sauce} sauce. Cooking time = #{my_lasagna.cooking_time}."

puts my_pizza.inspect
puts my_pasta.inspect
puts my_lasagna.inspect
