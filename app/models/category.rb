class Category < ApplicationRecord
  has_many :recipes

  validates :name, presence: true, uniqueness: true#, inclusion: {in: %w(Vegan French Recipes African Recipes Vegetarian Middle East)}
end
