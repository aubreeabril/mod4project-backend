class UserRecipe < ApplicationRecord
  belongs_to :user
  belongs_to :recipe
  enum category: [:appetizer, :bread, :breakfast, :dessert, :main_dish, :side, :snack]
end
