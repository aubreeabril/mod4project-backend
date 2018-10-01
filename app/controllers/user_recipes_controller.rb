class UserRecipesController < ApplicationController

  def index
    @user_recipes = UserRecipe.all
    render json: @user_recipes
  end

  def create
    @user_recipe = UserRecipe.create(user_recipe_params)
    render json: @user_recipe
  end

  private

  def user_recipe_params
    params.require(:user_recipe).permit(:user_id, :recipe_id)
  end
end
