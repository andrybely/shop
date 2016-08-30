require_relative "product.rb"
require_relative "music.rb"
require_relative "book.rb"
require_relative "movie.rb"

film = Movie.new(290, 7, "Leon")

puts "Фильм #{film.name} стоит #{film.price} руб."