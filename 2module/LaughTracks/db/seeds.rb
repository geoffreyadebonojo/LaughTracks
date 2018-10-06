require './app/models/comedian.rb'
require './app/models/special.rb'

# require File.expand_path('../../config/environment.rb', __FILE__)

require "database_cleaner"
DatabaseCleaner.strategy = :truncation
DatabaseCleaner.clean

bill = Comedian.create(name: "Bill Bur", age: 50, city: "Los Angeles")
bill.specials.create(name: "Special 1", image_url: "img", runtime: 40)

dave = Comedian.create(name: "Dave Chappelle", age: 45, city: "D.C.")

nick = Comedian.create(name: "Nick Swardson", age: 41, city:"Minneapolis")

louis = Comedian.create(name: "Louis C.K." , age: 51, city: "D.C.")

patton = Comedian.create(name: "Patton Oswalt", age: 49, city: "Portsmouth")

aziz = Comedian.create(name: "Aziz Ansari", age: 35, city: "Columbia")

hannibal = Comedian.create(name: "Hannibal Burress", age: 35, city: "Chicago")

patrice = Comedian.create(name: "Patrice O'Neal", age: 41, city: "Englewood")