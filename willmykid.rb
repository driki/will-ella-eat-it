require 'sinatra'
require 'builder'

menu = { 
          1 => 
          {
            :menu => "Chicken Fajita, Lettuce, Tomato, Shredded Cheese Chilled Fruit",
            :eatit => "No"
          },
          2 => 
          {
            :menu => "
Sal's Pizza
Vegetable
Chilled or Fresh 
Fruit",
            :eatit => "No"
          },
          3 => 
          {
            :menu => "Chicken Fajita, Lettuce, Tomato, Shredded Cheese Chilled Fruit",
            :eatit => "No"
          },
          4 => 
          {
            :menu => "Chicken Fajita, Lettuce, Tomato, Shredded Cheese Chilled Fruit",
            :eatit => "No"
          },
          5 => 
          {
            :menu => "Chicken Fajita, Lettuce, Tomato, Shredded Cheese Chilled Fruit",
            :eatit => "No"
          },
          6 => 
          {
            :menu => "Chicken Fajita, Lettuce, Tomato, Shredded Cheese Chilled Fruit",
            :eatit => "No"
          },
          7 => 
          {
            :menu => "Chicken Fajita, Lettuce, Tomato, Shredded Cheese Chilled Fruit",
            :eatit => "No"
          },
          8 => 
          {
            :menu => "Chicken Fajita, Lettuce, Tomato, Shredded Cheese Chilled Fruit",
            :eatit => "No"
          },
          9 => 
          {
            :menu => "Chicken Fajita, Lettuce, Tomato, Shredded Cheese Chilled Fruit",
            :eatit => "No"
          },
          10 => 
          {
            :menu => "Chicken Fajita, Lettuce, Tomato, Shredded Cheese Chilled Fruit",
            :eatit => "No"
          },
          11 => 
          {
            :menu => "Chicken Fajita, Lettuce, Tomato, Shredded Cheese Chilled Fruit",
            :eatit => "No"
          },
          12 => 
          {
            :menu => "Chicken Fajita, Lettuce, Tomato, Shredded Cheese Chilled Fruit",
            :eatit => "No"
          },
          13 => 
          {
            :menu => "Chicken Fajita, Lettuce, Tomato, Shredded Cheese Chilled Fruit",
            :eatit => "No"
          },
          14 => 
          {
            :menu => "Chicken Fajita, Lettuce, Tomato, Shredded Cheese Chilled Fruit",
            :eatit => "No"
          },
          15 => 
          {
            :menu => "Chicken Fajita, Lettuce, Tomato, Shredded Cheese Chilled Fruit",
            :eatit => "No"
          },
          16 => 
          {
            :menu => "Chicken Fajita, Lettuce, Tomato, Shredded Cheese Chilled Fruit",
            :eatit => "No"
          },
          17 => 
          {
            :menu => "Chicken Fajita, Lettuce, Tomato, Shredded Cheese Chilled Fruit",
            :eatit => "No"
          },
          18 => 
          {
            :menu => "Chicken Fajita, Lettuce, Tomato, Shredded Cheese Chilled Fruit",
            :eatit => "No"
          },
          19 => 
          {
            :menu => "Chicken Fajita, Lettuce, Tomato, Shredded Cheese Chilled Fruit",
            :eatit => "No"
          },
          20 => 
          {
            :menu => "Chicken Fajita, Lettuce, Tomato, Shredded Cheese Chilled Fruit",
            :eatit => "No"
          },
          21 => 
          {
            :menu => "Chicken Fajita, Lettuce, Tomato, Shredded Cheese Chilled Fruit",
            :eatit => "No"
          },
          22 => 
          {
            :menu => "Chicken Fajita, Lettuce, Tomato, Shredded Cheese Chilled Fruit",
            :eatit => "No"
          },
          23 => 
          {
            :menu => "Chicken Fajita, Lettuce, Tomato, Shredded Cheese Chilled Fruit",
            :eatit => "No"
          },
          24 => 
          {
            :menu => "Chicken Fajita, Lettuce, Tomato, Shredded Cheese Chilled Fruit",
            :eatit => "No"
          },
          25 => 
          {
            :menu => "No school lunch",
            :eatit => "No"
          },
          26 => 
          {
            :menu => "
Popcorn Chicken
Seasoned Rice 
Sliced Carrots
Chilled Fruit",
            :eatit => "Maybe"
          },
          27 => 
          {
            :menu => "
Your Choice Sandwich
Turkey, Ham, Tuna 
w/wo Cheese
 Vegetable Sticks w/dip
Fresh Frui",
            :eatit => "No"
          },
          28 => 
          {
            :menu => "
Chicken Caesar Wrap
Vegetable
Chilled or Fresh Frui",
            :eatit => "No"
          },
          29 => 
          {
            :menu => "
Manager's 
Special",
            :eatit => "Maybe"
          },
          30 => 
          {
            :menu => "
Sal's Pizza
Vegetable
Chilled or Fresh 
Fruit",
            :eatit => "Yes"
          }
      }

get '/' do
  @menu = menu
  erb :index
end

get '/voice-menu' do
  builder do |xml|
    xml.instruct!
    xml.Response do 
      xml.Say("Today: "+menu[(Time.now+0*24*60*60).day][:menu])
      xml.Say("Tomorrow's lunch is "+menu[(Time.now+1*24*60*60).day][:menu])
      xml.Say("Thanks for using What's for lunch")
    end
  end
end