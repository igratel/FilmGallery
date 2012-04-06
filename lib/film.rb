class Film
  attr_accessor :title
  attr_reader :genres

  def initialize (title)
    @title = title
    @genres = Array.new
    @countries = Array.new
    @seasons = nil
  end
end