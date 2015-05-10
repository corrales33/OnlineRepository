require "imdb"
require "pry"
require "ascii_charts"

class ImdbRating

	attr_accessor :movies, :titles, :ids, :rating, :histogram

	def initialize movies
		@movies = movies
		@titles = []
		@ids = []
		@rating = []
		@histogram = []
		get_id
		get_title
		create_array_histogram
	end

	def get_id
		@movies.each {|movie| show_id(movie)}
	end

	def show_id movie
		i = Imdb::Search.new(movie)
		@ids << i.movies[0].id
	end

	def get_title
		@ids.each {|id| show_title(id)}
	end

	def show_title id
		j = Imdb::Movie.new(id)
		@titles << j.title
		@rating << j.rating.round
	end

	def create_array_histogram
		@histogram = Array.new(@titles.length){Array.new(2)}
		for i in 0..@titles.length()-1
			@histogram[i][0] = i
			@histogram[i][1] = @rating[i]
		end
	end

end

movies = []

movies[0] = "Ghostbusters"
movies[1] = "Die Hard"
movies[2] = "The Godfather"
movies[3] = "Home alone"
movies[4] = "Star trek, the new generation"
movies[5] = "The night of the living dead"
movies[6] = "Titanic"

imdb = ImdbRating.new(movies)

puts AsciiCharts::Cartesian.new(imdb.histogram, :bar => true, :hide_zero => true).draw
puts "0. Ghostbusters."
puts "1. Die Hard."
puts "2. The Godfather."
puts "3. Home alone."
puts "4. Star trek, the new generation."
puts "5. The night of the living dead."
puts "6. Titanic."