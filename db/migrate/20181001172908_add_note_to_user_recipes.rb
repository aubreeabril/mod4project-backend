class AddNoteToUserRecipes < ActiveRecord::Migration[5.2]
  def change
    add_column :user_recipes, :note, :text
  end
end
