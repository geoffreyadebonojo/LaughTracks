# require '../models/comedian'
require 'pry'

class  LaughTracks < Sinatra::Base

  get '/comedians' do
    @comedians = Comedian.all
    # binding.pry
    erb :comedians
  end

  get '/comedians/new' do
    erb :new
  end

end