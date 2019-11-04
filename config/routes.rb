Rails.application.routes.draw do
  resources :countries
  resources :cities
  resources :bicycles
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
