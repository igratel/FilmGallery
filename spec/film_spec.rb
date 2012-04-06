require "rspec"
require "film"


describe "Film" do

  it "should add genre to genres list" do
    film = Film.new("some name")
    film.add_genre("some genre")
    film.genres.find { |g| g == "some genre" }.should == "some genre"
  end

  it "should not add genre if genre already exists" do
    film = Film.new("some name")
    film.add_genre("some genre")
    film.add_genre("some genre")
    genre_hash = Hash.new(0)
    film.genres.each { |genre| genre_hash[genre] += 1 }
    genre_hash["some genre"].should == 1
  end
end