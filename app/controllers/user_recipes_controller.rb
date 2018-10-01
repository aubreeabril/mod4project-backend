class UserRecipesController < ApplicationController
  before_action :find_user_recipe, only: [:destroy, :update]
  def index
    @user_recipes = UserRecipe.all
    render json: @user_recipes
  end

  def create
    @user_recipe = UserRecipe.create(user_recipe_params)
    render json: @user_recipe
  end

  def destroy
    render json: @user_recipe.destroy
  end

  def update
    @user_recipe.update(user_recipe_params)
    render json: @user_recipe
  end

  private

  def user_recipe_params
    params.require(:user_recipe).permit(:user_id, :recipe_id, :note)
  end

  def find_user_recipe
    @user_recipe = UserRecipe.find(params[:id])
  end
end
