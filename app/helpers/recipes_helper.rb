module RecipesHelper

    def created_date_of(recipe)
        recipe.created_at.strftime("%A, %b %e, at %l:%M %p")
    end

end
