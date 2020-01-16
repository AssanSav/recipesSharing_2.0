class RecipeIngredient < ApplicationRecord
    belongs_to :recipe, optional: true
    belongs_to :ingredient, optional: true 

    validates :amount, presence: true
    validates :recipe_id, uniqueness: {scope: [:ingredient_id]}
    accepts_nested_attributes_for :ingredient
    
    def ingredient_attributes=(ingredients_attributes)
        ingredients_attributes.values.each do |ingr_attributes|
            if !ingr_attributes.present? 
                self.ingredient.update(name: ingr_attributes)
            else
                self.ingredient = Ingredient.find_or_create_by(name: ingr_attributes)
            end
        end
    end

end
