class IngredientsController < Sinatra::Base
  set :root, "#{settings.root}/.."
  get '/ingredients' do
    @ingredients = Ingredient.all
    erb :"ingredients/index"
  end
end
