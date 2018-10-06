# require '../models/comedian'
require 'pry'

class  LaughTracks < Sinatra::Base

  get '/comedians' do
    # @comedians = Comedian.all
    # binding.pry
    
    @comedian1 = {name: "Dave Chappelle", age: 45, city: "Washington DC"}
    @comedian2 = {name: "Bill Burr", age: 51, city: "Boston"}
    @comedians = [@comedian1, @comedian2]
    erb :comedians
  end

  get '/comedians/new' do
    erb :new
  end

end