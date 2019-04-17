Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :chatrooms
      resources :messages
      resources :users
      resources :joins

      # Authentication route and token route
      post "/login", to: "auth#login"
      get "/current_user", to: "auth#get_user_from_token"
      # Chatroom actioncable
      mount ActionCable.server => '/cable'
    end
  end
end
