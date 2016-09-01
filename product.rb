
class Product
  def initialize(price, amount)
  @price = price
  @amount = amount
  end

  def price
    @price
  end

  def update
  end

  def info
  end

  def show
    "#{info} - #{@price} руб. [осталось: #{@amount}]"
  end

  def self.showcase(products)
    puts "Что хотите купить?\n\n"

    products.each_with_index do |product, index|
      puts "#{index}: #{product.show}"
    end
    puts "x. Покинуть магазин"
    puts "\n"
  end

  # Метод покупки товара
  def buy
    # Если товар был на складе — уменить количество и вернуть цену
    if @amount > 0
      puts "Вы купили товар #{info}"

      @amount -= 1
      price

      # Если товар закончился — продавать нечего, доход магазина 0
    else
      puts "К сожалению, больше нет"
      0
    end
  end
end

