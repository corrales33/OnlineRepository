require 'pry'

class ShoppingCart
	@@prices_list = {
		:apple	 	=> 10,
		:orange 	=> 5,
		:grape		=> 15,
		:banana		=> 20,
		:watermelon	=> 50}

	def initialize
		@cart = Hash.new 0	
	end

	def get_item_price item
		@@prices_list[item]
	end

	def add_item_to_cart item 
		@cart[item] += 1
	end	

	def show
		shopping_cart_calculated = calculate_shopping_cart
		
		shopping_cart_calculated.each_with_index  {|(key,value),index|
			puts "#{index+1}: #{key} => #{@cart[key]} items #{value} euros"}
	end

	def calculate_shopping_cart
		calculated_cart = {}
		@cart.each {|key,value|
			calculated_cart[key] = get_item_price(key) * value}

		calculated_cart			
	end	

	def get_cost
		shopping_cart_calculated = calculate_shopping_cart
		shopping_cart_calculated.reduce(0) {|sum, (key, val)| sum += val}
	end

end

shopping_cart = ShoppingCart.new

shopping_cart.add_item_to_cart :apple
shopping_cart.add_item_to_cart :apple
shopping_cart.add_item_to_cart :orange
shopping_cart.add_item_to_cart :orange
shopping_cart.add_item_to_cart :orange
shopping_cart.add_item_to_cart :grape
shopping_cart.add_item_to_cart :grape
shopping_cart.add_item_to_cart :watermelon
shopping_cart.add_item_to_cart :watermelon
shopping_cart.add_item_to_cart :banana

shopping_cart.show
puts "The cost of your shopping cart is #{shopping_cart.get_cost} euros"