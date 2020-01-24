Using Ruby on Rails for the project
 X Include at least one has_many relationship (x has_many y; e.g. User has_many Recipes)
    - user has_many :recipes 

 X Include at least one belongs_to relationship (x belongs_to y; e.g. Post belongs_to User)
    - recipes belongs_to :user 

 X Include at least two has_many through relationships (x has_many y through z; e.g. Recipe has_many Items through Ingredients)
    a- recipe has_many :recipe_ingredients
    - recipe has_many :ingredients, through: :recipe_ingredients
    b- ingredient has_many :recipe_ingredients
    - ingredient has_many :recipes, through: :recipe_ingredients

 Include at least one many-to-many relationship (x has_many y through z, y has_many x through z; e.g. Recipe has_many Items through Ingredients, Item has_many Recipes through Ingredients)

 X The "through" part of the has_many through includes at least one user submittable attribute, that is to say, some attribute other than its foreign keys that can be submitted by the app's user (attribute_name e.g. ingredients.quantity)
    - recipe_ingredients join table has an amount attribute

 X Include reasonable validations for simple model objects (list of model objects with validations e.g. User, Recipe, Ingredient, Item)
    - using the built-in Active Record validation helpers
    - and also some customed validation methods build with my own logic

 X Include a class level ActiveRecord scope method (model object & class method name and URL to see the working feature e.g. User.most_recipes URL: /users/most_recipes)
    - Many scope class were used such as users can browse recipes grouped by categories, search by recipe names or servings, comments grouped by users, recipes listed by created_at descending ...

 X Include signup (how e.g. Devise)
 X Include login (how e.g. Devise)
 X Include logout (how e.g. Devise)
    - Using the devise gem the users will be identified, authenticated and given acces to the app policy depending 

 X Include third party signup/login (how e.g. Devise/OmniAuth)
    - Facebook OmniAuth was integrated through the devise gem

 X Include nested resource show or index (URL e.g. users/2/recipes)
    - recipes/:recipe_id/comments
    - categories/:category_id/recipes/:id

 X Include nested resource "new" form (URL e.g. recipes/1/ingredients/new)
    - recipes/:recipe_id/comments

 X Include form display of validation errors (form URL e.g. /recipes/new)
Confirm:
    - Using the validations helper field_with_errors and some custom notices there is some meaningfull flash messages dysplayed all over the app

 X The application is pretty DRY
    - Using the before_action helper all repitious codes were reduced to a single line after defining a private method to be called

 X Limited logic in controllers
    - No logic has been used in my app controller, all were defined in the model

 X Views use helper methods if appropriate
   
 X Views use partials if appropriate
    - repetitious codes in the views were put into form partials and shared