class Recipe < ApplicationRecord
	belongs_to :user
	belongs_to :category 
	has_many :comments
	has_many :recipe_ingredients 
    has_many :ingredients, through: :recipe_ingredients

	validates :name, presence: true, uniqueness: true 
	
	def self.list_by_category 
		self.all.group_by(&:category)
	end

end
