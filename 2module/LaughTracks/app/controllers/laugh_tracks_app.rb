# require '../models/comedian'
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
    erb :new
  end

  post '/comedians' do
    Comedian.create(params[:comedian])
    redirect '/comedians'
  end
end