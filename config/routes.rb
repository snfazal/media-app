Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:create, :show, :destroy] do
    collection do
      post '/login', to: 'users#login'
    end
  end
  resources :media
end

# Below are Rails Routes for Reference
# Prefix Verb   URI Pattern            Controller#Action
# login_users POST   /users/login(.:format) users#login
#  users POST   /users(.:format)       users#create
#   user GET    /users/:id(.:format)   users#show
#        DELETE /users/:id(.:format)   users#destroy
#  media GET    /media(.:format)       media#index
#        POST   /media(.:format)       media#create
# medium GET    /media/:id(.:format)   media#show
#        PATCH  /media/:id(.:format)   media#update
#        PUT    /media/:id(.:format)   media#update
#        DELETE /media/:id(.:format)   media#destroy
