class Recipe < ApplicationRecord
	include Filterable

	has_one_attached :image
	belongs_to :user
	belongs_to :category
	has_many :comments
	has_many :recipe_ingredients, dependent: :destroy
	has_many :ingredients, through: :recipe_ingredients
	
	validates :image, presence: true
	validates :name, presence: true, uniqueness: {:scope => [:user_id, :category_id]}
	validates :number_of_persons, presence: true
	validates :directions, presence: true 
	before_validation :name_capitalizer

	scope :find_recipes_by_name, -> (name) { where("name like ?", "#{name}%")}
	scope :find_recipes_by_serving, -> (number_of_persons) { where number_of_persons: number_of_persons }

	accepts_nested_attributes_for :recipe_ingredients, reject_if: :all_blank
	
	def self.list_by_category 
		all.group_by(&:category)
	end
	
	def self.desc_listing
		all.order(created_at: :desc)
	end

	# def self.servings_query(query)
	# 	all.where("number_of_persons like ?", "#{query}%")
	# end

	private 

	def name_capitalizer 
		self.name = self.name.capitalize 
	end

end
