require_relative "product.rb"
require_relative "music.rb"
require_relative "book.rb"
require_relative "movie.rb"

#book = Book.new(170, 7)

#movie = Movie.new(290, 8)

#music = Music.new(150, 12)

#book.update(:title => 'Приключения Тома Сойера', :author_name => 'Марк Твен')

#movie.update(:title => 'Leon', :director_name => 'Luk Besson', :year => '1994')

#music.update(:album_name => 'Seek and destroy', :artist_name => 'Metallica', :genre => 'Metall')

#puts "Книга #{book.title} автора #{book.author_name} стоит #{book.price} руб."

#puts "Фильм #{movie.title} режиссера #{movie.director_name} #{movie.year} года стоит #{movie.price} руб."

#puts "Альбом #{music.album_name} исполнителя #{music.artist_name} в жанре #{music.genre} стоит #{music.price} руб."

#movie.info

#puts movie.show

total_price = 0

# Создадим массив продуктов и наполним его фильмами, книгами и музыкой
products = []

product = Movie.new(990, 5)
product.update(:title => 'Леон', :director_name => 'Люк Бессон', :year => '1994')
products.push(product)

product = Movie.new(990, 2)
product.update(:title => 'Человек дождя', :director_name => 'Барри Левинсон', :year => '1988')
products.push(product)

product = Movie.new(1490, 1)
product.update(:title => 'Тёмный рыцарь', :director_name => 'Кристофер Нолан', :year => '2008')
products.push(product)

product = Book.new(349, 10)
product.update(:title => 'Приключения Тома Сойера', :author_name => 'Марк Твен')
products.push(product)

product = Music.new(590, 10)
product.update(:album_name => 'Turbo', :artist_name => 'Judas Priest', :genre => 'Heavy Metal')
products.push(product)

# Покажем пользователю ассортимент и предложим что-нибудь купить
Product.showcase(products)

# Купит какой-нибудь фильм
#products[1].buy

# В переменной choice будем хранить выбор пользователя
choice = nil

# Пока пользователь не захочет выйти
while(choice != 'x')
  # Покажем пользователю ассортимент и предложим что-нибудь купить
  Product.showcase(products)

  choice = STDIN.gets.chomp

  # Проверим, что пользователь выбрал какой-то продукт
  if(choice != 'x')
    # Купим продукт и увеличим стоимость покупок
    product = products[choice.to_i]
    total_price += product.buy
  end
end

# Наконец, покажем, сколько должен пользователь
puts "Спасибо за покупки, с Вас #{total_price} руб."