class  LaughTracks < Sinatra::Base

  get '/' do
    erb :dashboard
  end

  get '/comedians' do
    erb :comedians
  end

  get '/comedians/new' do
    erb :new
  end

end