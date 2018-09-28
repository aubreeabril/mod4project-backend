class User < ApplicationRecord
  has_secure_password
  validates :username, uniqueness: {case_sensitive: false}
  has_many :user_recipes
  has_many :recipes, through: :user_recipes
end
