Rails.application.routes.draw do
  get 'about', to: "pages#about"
  get 'contact', to: "pages#contact"

  #restaurants
  get 'restaurants', to: "restaurants#index"
  post 'restaurants', to: "restaurants#create"
  get 'restaurants/:id', to: "restaurants#show"

  # get '/', to: "pages#home"
  root to: "pages#home"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
