class Music < Product

  def update(options)
    @album_name = options[:album_name]
    @artist_name = options[:artist_name]
    @genre = options[:genre]
  end

  def info
    puts "Альбом #{@album_name} исполнитель #{@artist_name} (#{@genre})"
  end
end