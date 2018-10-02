class AddRatingToUserRecipes < ActiveRecord::Migration[5.2]
  def change
    add_column :user_recipes, :rating, :integer
  end
end
