class Film
  attr_accessor :title
  attr_reader :genres

  def initialize (title)
    @title = title
    @genres = Array.new
    @countries = Array.new
    @seasons = nil
  end

  def add_genre (genre)
    if @genres.find { |g| g == genre} == nil
      @genres.push(genre)
    end
  end

  def has_genre? (genre)
    if @genres.find { |g| g == genre} != nil
      true
    else
      false
    end
  end
end