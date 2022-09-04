require './lib/dish'
require './lib/potluck'

RSpec.describe Potluck do
  it 'exists' do
    potluck = Potluck.new("7-13-18")
    expect(potluck).to be_an_instance_of(Potluck)
  end

  describe'attributes' do
   it 'has a date' do
    potluck = Potluck.new("7-13-18")
    expect(potluck.date).to eq("7-13-18")

   end
  end

  describe'dishes' do
   it 'has dishes' do
    potluck = Potluck.new("7-13-18")
    expect(potluck.dishes).to eq([])
   end

   describe 'add_dishes'
    it 'can add dishes' do
     couscous_salad = Dish.new("Couscous Salad", :appetizer)
     cocktail_meatballs = Dish.new("Cocktail Meatballs", :entre)
     potluck = Potluck.new("7-13-18")


     potluck.add_dish(couscous_salad)
     expect(potluck.dishes.length).to eq(1)
     potluck.add_dish(cocktail_meatballs)

     expect(potluck.dishes).to eq([couscous_salad, cocktail_meatballs])

     expect(potluck.dishes.length).to eq(2)


   end
  end

  describe 'potluck puts dishes in a category'do
   it'puts every dish in a category' do
    potluck = Potluck.new("7-13-18")
    couscous_salad = Dish.new("Couscous Salad", :appetizer)
    summer_pizza = Dish.new("Summer Pizza", :appetizer)
    roast_pork = Dish.new("Roast Pork", :entre)
    cocktail_meatballs = Dish.new("Cocktail Meatballs", :entre)
    candy_salad = Dish.new("Candy Salad", :dessert)
    potluck.add_dish(couscous_salad)
    potluck.add_dish(summer_pizza)
    potluck.add_dish(roast_pork)
    potluck.add_dish(cocktail_meatballs)
    potluck.add_dish(candy_salad)

    # potluck.get_all_from_category(:appetizer).first
    expect(potluck.get_all_from_category(:appetizer)).to eq([couscous_salad, summer_pizza])
    expect(potluck.get_all_from_category(:dessert)).to eq([candy_salad])
    expect



   end
  end

end


#=> #<Potluck:0x00007f9422838908...>

#=> #<Dish:0x00007f942191e9b8...

#=> #<Dish:0x00007f9421d26880...>

#=> #<Dish:0x00007f9421d04870...>

#=> #<Dish:0x00007f9421ce6e88...>

#=> #<Dish:0x00007f9421cb60f8...>

#=> [#<Dish:0x00007f942191e9b8...]

#=> [#<Dish:0x00007f942191e9b8...>, #<Dish:0x00007f9421d26880...>]

#=> [#<Dish:0x00007f942191e9b8...>, #<Dish:0x00007f9421d26880...>, #<Dish:0x00007f9421e26800...>]

#=> [#<Dish:0x00007f942191e9b8...>, #<Dish:0x00007f9421d26880...>, #<Dish:0x00007f9421e26800...>, #<Dish:0x00007f9421dAA770...>]

#=> [#<Dish:0x00007f942191e9b8...>, #<Dish:0x00007f9421d26880...>, #<Dish:0x00007f9421e26800...>, #<Dish:0x00007f9421dAA770...>, #<Dish:0x00007f9421dAA610...>]

#=> [#<Dish:0x00007f942191e9b8...>, #<Dish:0x00007f9421d26880...>

#=> #<Dish:0x00007f942191e9b8...>

# potluck.get_all_from_category(:appetizer).first.name
# => "Couscous Salad"
