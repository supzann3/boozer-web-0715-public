class CocktailsIndexView
  def self.call(cocktails)
    puts "Lookup Id".ljust(20) + "Cocktail Name"
    cocktails.each do |cocktail|
      puts "#{cocktail.id}:".ljust(20) + "#{cocktail.name}"
    end
  end
end
