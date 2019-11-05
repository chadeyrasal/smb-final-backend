Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      resources :users
      resources :trips
      resources :neighbourhoods
      resources :countries
      resources :cities
      resources :bicycles
    end
  end

end
