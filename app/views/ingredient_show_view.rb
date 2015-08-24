class IngredientShowView
  def self.call(ingredient)
    if ingredient
      ingredient.cocktails.each do |cocktail|
        puts "#{cocktail.id}:".ljust(20) + "#{cocktail.name}"
      end
    else
      puts "No drinks with that ingredient"
    end
  end
end
