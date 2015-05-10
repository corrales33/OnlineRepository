require "pry"

class Car

	IO.write("cars.txt", 0)

	attr_accessor :sound

	def initialize sound, color="rojo"
		@sound = sound
		@color = color
		save_count
	end

	def save_count
		total = IO.read("cars.txt").to_i
		total += 1
		IO.write("cars.txt", total)
	end

	def self.show_count
		IO.read("cars.txt")
	end

	def show_color
		puts @color
	end

	def make_noise
		puts @sound
	end

end

class Racing_car < Car

	def initialize
		@sound = "BROOOM"
	end

end

my_car = Car.new("Brooom", "Red")

other_car = Car.new("BBBBBRRRRROOOOOOOMMMMMMMM", "Yellow")

my_car_2 = Car.new("Puuuuf", "Green")

my_car_3 = Car.new("Borororor", "Blue")

super_car = Racing_car.new

array = Array.new
#array.push(my_car, my_car_2, super_car)
#array.each { |car| car.make_noise }

sounds = ["Broom", "Meek", "Nyan"]
#sounds.each do |sound|
#	array.push(Car.new(sound))  Es casi equivalente que el map de abajo
#end
cars = sounds.map do |sound|
	Car.new(sound)
end

cars_reduce = cars.reduce("") do |m, n|
	m + n.sound
end

print cars_reduce