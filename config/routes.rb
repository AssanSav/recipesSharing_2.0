Rails.application.routes.draw do
  root to: 'page#home'
  devise_for :users
  
  resources :directions
  resources :recipe_ingredients
  resources :ingredients
  resources :comments
  resources :categories
  resources :recipes 

  resources :recipes do 
    resources :comments
  end

end
