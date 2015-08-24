class IngredientsController
  def show
    puts "Which ingredient are you looking for?"
    choice = gets.chomp
    ingredient = Ingredient.find_by(name: choice)
    IngredientShowView.call(ingredient)
  end
end
