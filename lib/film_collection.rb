class FilmCollection
  def initialize ()
    @films = Array.new
  end

  def add (film)
    @films.push(film)
  end
end