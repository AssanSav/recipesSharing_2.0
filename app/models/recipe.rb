class Recipe < ApplicationRecord
	belongs_to :user
	belongs_to :category
	has_many :directions 
	has_many :comments
	has_many :recipe_ingredients
	has_many :ingredients, through: :recipe_ingredients
	
	validates :name, presence: true, uniqueness: {:scope => [:user_id, :category_id]}
	validates :number_of_persons, presence: true
	before_validation :name_capitalizer

	accepts_nested_attributes_for :recipe_ingredients, reject_if: :all_blank
	accepts_nested_attributes_for :directions, reject_if: :all_blank
	
	def self.list_by_category 
		all.group_by(&:category)
	end

	private 

	def name_capitalizer 
		self.name = self.name.capitalize 
	end

end
