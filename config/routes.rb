Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :chatrooms
      resources :messages
      resources :users
      resources :joins
    end
  end
end
