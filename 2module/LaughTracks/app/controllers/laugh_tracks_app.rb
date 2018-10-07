# require '../models/comedian'
require 'pry'

class  LaughTracks < Sinatra::Base

  get '/' do
    erb :dashboard
  end

  get '/comedians' do
    @comedians = Comedian.all
    # binding.pry
    @average_length = 52
    @total_specials = 14
    @average_age = 34

    @cities_list = ["Los Angeles", "New York", "Chicago", "Boston", "Denver"]

    erb :comedians
  end

  get '/comedians/new' do
    erb :new
  end

end