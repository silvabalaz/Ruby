#!/usr/bin/env ruby

def x_ray(hash)
	hash.each do |key,value|
		puts "#{key}: #{value}"
	end
end

x_ray({name: "TheBox", species: "Dog"})

def doubler(array)
	new_array = []
	array.each do |element|
		new_array.push element*2
	end
    return new_array
end

def doubler(array)
	array.map { |element| element*2}
end
puts doubler([1,4,5])





class Pizza
	def initialize(name,price)
		@name = name
		@price = price
		@toppings = []
	end

	def add_topping(topping)
		@toppings.push topping
	end

	def to_s
		"#{@name} $#{@price}"
	end

	attr_reader :toppings
end


pizza = Pizza.new("TheBox", 50)
puts pizza

pizza.add_topping "cheeze"
pizza.add_topping "ham"
puts pizza.toppings

class String 
	def boxed
		"|| #{self}||"
	end
end
puts "What".boxed
