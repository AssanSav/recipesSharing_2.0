class RecipeIngredient < ApplicationRecord
    belongs_to :recipe, optional: true
    belongs_to :ingredient, optional: true 

    validates :amount, presence: true
    validates_uniqueness_of :ingredient_id, scope: :recipe_id
    
    def ingredient_attributes=(ingredients_attributes)
        ingredients_attributes.values.each do |ingredient_name|
            if ingredient_name.present? 
                self.ingredient = Ingredient.find_or_create_by(name: ingredient_name)
            end
        end
    end

end
