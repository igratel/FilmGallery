class FilmCollection
  def initialize ()
    @films = Array.new
  end

  def add (film)
    if @films.find { |a_film| film.title == a_film.title } == nil
      @films.push(film)
    else
      @films
    end
  end

  def find (title)
    @films.find { |film| title == film.title }
  end
end