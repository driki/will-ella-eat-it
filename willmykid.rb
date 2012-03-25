require 'sinatra'

march = { 
        1 => 
          {
            :menu => "Chicken Fajita, Lettuce, Tomato, Shredded Cheese Chilled Fruit",
            :eatit => "No"
          },
        25 => 
          {
            :menu => "Sal's Pizza Vegetable Chilled or Fresh Fruit",
            :eatit => "Yes"
          }
      }

get '/' do
  @menu = march
  erb :index
end

get '/tomorrow' do
  "Pizza"
end