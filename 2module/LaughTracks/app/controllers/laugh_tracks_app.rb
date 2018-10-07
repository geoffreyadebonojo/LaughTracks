# require '../models/comedian'
require 'pry'

class  LaughTracks < Sinatra::Base

  get '/' do
    erb :dashboard
  end

  get '/comedians' do
    @comedians = Comedian.all
    @specials = Special.all
    # binding.pry
    

    # @cities_list = ["Los Angeles", "New York", "Chicago", "Boston", "Denver"]
    @cities_list = ["Los Angeles"]


    #! TODO: hook up queries to database for avg runtime, totals, etc
    erb :comedians
  end

  get '/comedians/new' do
    erb :new
  end

end