class RecipesController < ApplicationController
  skip_before_action :authorized, only: [:index]

  def index
    @recipes = Recipe.all
    render json: @recipes
  end

  def create
    @recipe = Recipe.create(recipe_params)
    render json: @recipe
  end

  private

  def recipe_params
    params.require(:recipe).permit(:title, :image, :source, :yield, :ingredient_lines => [], :health_labels => [])
  end
end
