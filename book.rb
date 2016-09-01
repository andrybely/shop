class Book < Product

  def update(options)
    @title = options[:title]
    @author_name = options[:author_name]
  end

  def info
    puts "Книга \"#{@title}\" автор #{@author_name}"
  end
end