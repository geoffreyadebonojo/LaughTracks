require './app/models/comedian.rb'
require './app/models/special.rb'

# require File.expand_path('../../config/environment.rb', __FILE__)

require "database_cleaner"
DatabaseCleaner.strategy = :truncation
DatabaseCleaner.clean

bill = Comedian.create(name: "Bill Bur", age: 50, city: "Los Angeles")
bill.specials.create(name: "Why Do I Do This?", image_url: "https://m.media-amazon.com/images/M/MV5BMjI3OTcxNTA1MV5BMl5BanBnXkFtZTgwNDY2MjA2MDE@._V1_.jpg", runtime: 190)
bill.specials.create(name: "Let it Go", image_url: "https://m.media-amazon.com/images/M/MV5BMjA0ODUxODkwOV5BMl5BanBnXkFtZTgwNTMwNTA2MDE@._V1_.jpg", runtime: 40)

dave = Comedian.create(name: "Dave Chappelle", age: 45, city: "D.C.")
dave.specials.create(name: "Killin' Them Softly", image_url: "https://m.media-amazon.com/images/M/MV5BMTcyOGMxN2MtYzUwYy00YzQxLTgwZTItZjAxZTIzYWM1YzEyXkEyXkFqcGdeQXVyNjExODE1MDc@._V1_.jpg", runtime: 76)

nick = Comedian.create(name: "Nick Swardson", age: 41, city:"Minneapolis")
nick.specials.create(name: "Taste It", image_url: "https://m.media-amazon.com/images/M/MV5BMTcwOWEyMWEtZGUzYy00NjlhLWJkMjItZjczMGI3MDg5NmRiXkEyXkFqcGdeQXVyNjgwMTUxMTI@._V1_.jpg", runtime: 54)


louis = Comedian.create(name: "Louis C.K." , age: 51, city: "D.C.")
louis.specials.create(name: "Shameless", image_url: "https://m.media-amazon.com/images/M/MV5BMjE4NjE1ODI5Ml5BMl5BanBnXkFtZTcwMTgxNjc0MQ@@._V1_.jpg", runtime: 92)

patton = Comedian.create(name: "Patton Oswalt", age: 49, city: "Portsmouth")
patton.specials.create(name: "Finest Hour", image_url:"https://m.media-amazon.com/images/M/MV5BMjEyNTUxMTQ3OV5BMl5BanBnXkFtZTgwNDIyNjA2MDE@._V1_.jpg", runtime:62)

aziz = Comedian.create(name: "Aziz Ansari", age: 35, city: "Columbia")
aziz.specials.create(name: "Intimate Moments for a Sensual Evening", image_url:"https://m.media-amazon.com/images/M/MV5BMTQyMzEyMTI5MV5BMl5BanBnXkFtZTgwMzM0NDA2MDE@._V1_.jpg", runtime: 80)

hannibal = Comedian.create(name: "Hannibal Burress", age: 35, city: "Chicago")
hannibal.specials.create(name: "Animal Furnace", image_url:"https://m.media-amazon.com/images/M/MV5BMjI4OTUxMTg1M15BMl5BanBnXkFtZTgwNDI1NjA2MDE@._V1_.jpg", runtime: 73)

patrice = Comedian.create(name: "Patrice O'Neal", age: 41, city: "Englewood")
patrice.specials.create(name: "Elephant in the Room", image_url:"https://m.media-amazon.com/images/M/MV5BMTM5MDUzNzI2N15BMl5BanBnXkFtZTgwNTE2NDA2MDE@._V1_.jpg", runtime: 77)