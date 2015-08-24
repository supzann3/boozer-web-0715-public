class MenuController
  def self.start
    puts "Select an option"
    puts "1. Show all cocktails"
    puts "2. Find a cocktail by id"
    puts "3. Find drinks containing an ingredient"
    choice = gets.to_i
    puts "\e[H\e[2J"
    case choice
    when 1
      cocktails_controller = CocktailsController.new
      cocktails_controller.index
    when 2
      cocktails_controller = CocktailsController.new
      cocktails_controller.show
    when 3
      ingredients_controller = IngredientsController.new
      ingredients_controller.show
    end
    start
  end
end
