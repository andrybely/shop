class Movie < Product
  def update(options)
    @title = options[:title]
    @director_name = options[:director_name]
    @year = options[:year]
  end

  def info
    puts "Фильм \"#{@title}\" реж. #{@director_name} (#{@year})"
  end
end