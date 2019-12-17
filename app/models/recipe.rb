class Recipe < ApplicationRecord
	belongs_to :category 

	validates :name, presence: true, uniqueness: true 
	
	def self.list_by_category 
		self.all.group_by(&:category)
	end

end
