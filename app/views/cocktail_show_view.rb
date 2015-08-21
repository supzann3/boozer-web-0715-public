require 'pry'
class CocktailShowView
  def self.call(cocktail)
    puts cocktail.name
    puts cocktail.instructions
    cocktail.proportions.each do |proportion|
      puts "#{proportion.amount}".ljust(10, ".") + proportion.ingredient.name
    end
    puts cocktail.source
  end
end
