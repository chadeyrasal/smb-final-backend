Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      resources :users, only: [:show, :create]
      resources :trips, only: [:index, :show, :create, :update]
      resources :neighbourhoods, only: [:index, :show, :create]
      resources :countries, only: [:create]
      resources :cities, only: [:index, :show, :create]
      resources :bicycles, only: [:index, :show, :create, :update]
    end
  end

end
