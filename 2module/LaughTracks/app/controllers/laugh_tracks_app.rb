
require 'pry'

class  LaughTracks < Sinatra::Base

  get '/' do
    @specials = Special.all
    erb :dashboard
  end

  get '/comedians/statistics' do
    @comedians = Comedian.all
    @specials = Special.all

    # @cities_list = ["Los Angeles", "New York", "Chicago", "Boston", "Denver"]

    #? Who is responsible for assembling this list?
    cities = @comedians.map do |comedian|
      comedian.city
    end

    @cities_list = cities.uniq

    erb :statistics
  end

  get '/comedians' do
    @comedians = Comedian.all
    @specials = Special.all
    # binding.pry


    #! TODO: hook up queries to database for avg runtime, totals, etc
    erb :comedians
  end

  get '/comedians/new' do
    erb :new_comedian
  end

  
  get '/specials' do
    @comedians = Comedian.all
    @specials = Special.all
    
    erb :specials
  end
  
  get '/specials/new' do
    @comedians = Comedian.all
    @specials = Special.all

    erb :new_special
    # binding.pry
  end

  post '/specials' do
    Special.create([params[:special]])

    redirect '/comedians'
  end

  post '/comedians' do
    Comedian.create(params[:comedian])

    #! IF comedian.has_special? 
    #! redirect '/specials', where 

    redirect '/comedians'
  end
end