class MenuController
  def index
    options
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
    when 0
      abort "Enjoy getting drunk"
    else
      puts "Invalid selection"
    end
    index
  end

  private
  def options
    puts "Select an option"
    puts "1. Show all cocktails"
    puts "2. Find a cocktail by id"
    puts "3. Find drinks containing an ingredient"
    puts "Press exit to quit"
  end
end
