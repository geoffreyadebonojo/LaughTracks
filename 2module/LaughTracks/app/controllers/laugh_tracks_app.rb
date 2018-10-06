# require '../models/comedian'

class  LaughTracks < Sinatra::Base


  get '/comedians' do
    @comedians = Comedian.all
    erb :comedians
  end

  get '/comedians/new' do
    erb :new
  end


end