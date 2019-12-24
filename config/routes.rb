Rails.application.routes.draw do
  resources :recipe_ingredients
  resources :ingredients
  devise_for :users
  root to: 'page#home'
  resources :comments
  resources :categories
  resources :recipes 

  resources :recipes do 
    resources :comments
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
