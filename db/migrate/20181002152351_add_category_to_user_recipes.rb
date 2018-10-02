class AddCategoryToUserRecipes < ActiveRecord::Migration[5.2]
  def change
    add_column :user_recipes, :category, :integer
  end
end
