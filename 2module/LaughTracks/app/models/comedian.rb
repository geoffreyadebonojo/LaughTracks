class Comedian < ActiveRecord::Base
  validates_presence_of  :name, :age, :city
  attr_reader            :name, :age, :city

  def initialize(comedian_params)
    @name =      comedian_params["name"]
    @age  =      comedian_params["age"]
    @city =      comedian_params["city"]
    @id   =      comedian_params["id"] if comedian_params["id"]
    
    @database = SQLite3::Database.new('db/laugh_tracks_development.db')
    @database.results_as_hash = true
  end

end