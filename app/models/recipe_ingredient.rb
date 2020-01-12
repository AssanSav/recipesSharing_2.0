class RecipeIngredient < ApplicationRecord
    belongs_to :recipe, optional: true
    belongs_to :ingredient, optional: true 

    validates :amount, presence: true
    
    def ingredient_attributes=(ingredient_attributes)
        ingredient_attributes.values.each do |attributes|
            if attributes !=""
                self.ingredient = Ingredient.find_or_create_by(name: attributes)
            end
        end
    end
    
end
