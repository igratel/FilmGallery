require "rspec"
require "film"


describe "Film" do

  it "should add genre to genres list" do
    film = Film.new("some name")
    film.add_genre("some genre")
    film.genres.find("some genre").should_not == nil
  end
end