class FilmCollection
  attr_reader :films

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

  def delete (title)
    if find(title) != nil
      index = @films.find_index(find(title))
      @films.delete_at(index)
    end
  end

  def find (title)
    @films.find { |film| title == film.title }
  end

  def change_title (old_title, new_title)
    if find(old_title) != nil
      if find(new_title) == nil
        find(old_title).title = new_title
        find(new_title)
      else
        find(old_title)
      end
    else
      nil
    end
  end

end