require 'sinatra'
require 'builder'

menu = { 
          1 => 
          {
            :menu => "No school lunch today",
            :eatit => "No"
          },
          2 => 
          {
            :menu => "
Mandarin Orange
Chicken served over
Brown Rice,
Mixed Vegetable,
Chilled Pear",
            :eatit => "No"
          },
          3 => 
          {
            :menu => "
Ham & Cheese
Croissant,
Fresh cut veggies with dip,
Fresh Fruit",
            :eatit => "No"
          },
          4 => 
          {
            :menu => "Tuna Sub,
            Fresh cut-up veggies with dip,
            Chilled Fruit",
            :eatit => "No"
          },
          5 => 
          {
            :menu => "4x6 Pizza,
            Garden Salad,
            Fruit",
            :eatit => "Yes"
          },
          6 => 
          {
            :menu => "No school today",
            :eatit => "No"
          },
          7 => 
          {
            :menu => "No school today",
            :eatit => "No"
          },
          8 => 
          {
            :menu => "No school today",
            :eatit => "No"
          },
          9 => 
          {
            :menu => "Baked Chicken Nuggets,
            Mashed Potatoes,
            Season Peas,
            Chilled Peaches",
            :eatit => "No"
          },
          10 => 
          {
            :menu => "Grilled Cheese,
            Cup up veggies with dip,
            Fresh Fruit",
            :eatit => "No"
          },
          11 => 
          {
            :menu => "Taco's, Lettuce, Tomato, Shredded Cheese, Salsa, Corn Applesauce",
            :eatit => "No"
          },
          12 => 
          {
            :menu => "Turkey Sandwich without cheese, Bag-O-Carrots, Fresh Fruit",
            :eatit => "No"
          },
          13 => 
          {
            :menu => "Hot Dog on a bun, Corn, Pretzels, Fresh Fruit",
            :eatit => "No"
          },
          14 => 
          {
            :menu => "No school today",
            :eatit => "No"
          },
          15 => 
          {
            :menu => "No school today",
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
Fresh Fruit",
            :eatit => "No"
          },
          28 => 
          {
            :menu => "
Chicken Caesar Wrap,
Vegetable,
Chilled or Fresh Fruit",
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
      xml.Say("Thanks for using Watertown what's for lunch")
    end
  end
end