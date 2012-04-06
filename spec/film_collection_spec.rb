require "rspec"
require "film"
require "film_collection"


describe "Film Collection" do
  context "all film titles we add are unique" do
    it "should add new film to the end of collection" do
      film = Film.new("some name")
      film_collection = FilmCollection.new
      film_collection.add(film)[-1].should == film
    end
  end

  context "some titles are not unique" do
    it "should not add film to the end of collection if film with such title exists" do
      film_collection = FilmCollection.new
      film_collection.add(Film.new("some name"))
      film_collection.add(Film.new("some other name"))
      film_collection.add(Film.new("some name"))[-1].title.should_not == "some name"
    end
  end
end