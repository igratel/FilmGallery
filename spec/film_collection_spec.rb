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

  it "should find film by title and should return nil if title does not exist" do
    film_collection = FilmCollection.new
    film_collection.add(Film.new("some title"))
    film_collection.add(Film.new("some other title"))
    film_collection.add(Film.new("some other other title"))
    film_collection.find("some other title").title.should == "some other title"
    film_collection.find("some not existing title").should == nil
  end

  it "should change title of film if it does not violate unique constraint" do
    film_collection = FilmCollection.new
    film_collection.add(Film.new("some title"))
    film_collection.change_title("some title", "some new title").title.should == "some new title"
    film_collection.add(Film.new("some title"))
    film_collection.add(Film.new("some other title"))
    film_collection.change_title("some title", "some other title").title.should_not == "some other title"
  end

  it "should delete film" do
    film_collection = FilmCollection.new
    film_collection.add(Film.new("some title"))
    film_collection.add(Film.new("some other title"))
    film_collection.delete("some other title")
    film_collection.find("some other title").should == nil
  end

end