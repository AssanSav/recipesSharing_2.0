1- Create User MVC 
    - Username, email_address, phone_number, password_digest => table 
    - has_many :recipes
    - has_many :comments 
    - Validations, authentications and authorisations => models
    - Forms to signup and lognin 
    - Only an Admin user should be allowed to create a new Category
    - User can create a new, recipe, food type or a comment 
    - User can search recipes by Name, Category or Food Type
    - User can only edit, update or delete a recipe, food type or comment they themselves created
    - User can edit, update or delete their own accounts 


2- Create Recipe MVC 
    - name
    - belongs_to :user
    - has_many :comments
    - has_many :Recipe_ingredients 
    - has_many :ingredients, through: :Recipe_ingredients 
    - Validations
    - CRUD and all RESTful routes
    - Forms to Create and Edit a recipe
    - Have a fields_for :recipe_ingredients
        # quantity 
        # unit 
        # cooking_process
    - Have a recipe to be associated with the current user upon creation


3- Create Ingredient MVC
    - name 
    - has_many :Recipe_ingredients 
    - has_many :recipes, through: :Recipe_ingredients 
    - validations 
    - CRUD plus create, edit, update and delete routes


4- Create Recipe_ingredients 
    - quantity, unit, cooking_process
    - belongs_to :recipe 
    - belongs_to :ingredient
    - Validations 


5- Create Comment MVC
    - content 
    - belongs_to :user
    - belongs_to :recipe
    - CRUD plus create, edit, update and delete routes


