class AddStatusToUserRecipes < ActiveRecord::Migration[5.2]
  def change
    add_column :user_recipes, :status, :integer, default: 0
  end
end
