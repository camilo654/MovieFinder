Rails.application.routes.draw do
  resources :ratings
  resources :reviewers
  resources :categories_movies
  resources :categories
  resources :languages_movies
  resources :languages
  resources :directors_movies
  resources :actors_movies
  resources :castings
  resources :countrys_movies
  resources :countries
  resources :movies
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
