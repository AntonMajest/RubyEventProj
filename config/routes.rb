Rails.application.routes.draw do
    # get 'pages/index'
    # root 'pages#index'
    post '/users',         to: 'users#create'
get '/users/:user_id', to: 'users#show'
get '/users',          to: 'users#index'
   
    post '/login',    to: 'sessions#create'
post '/logout',   to: 'sessions#destroy'
get '/logged_in', to: 'sessions#is_logged_in?'
resources :users, only: [:create, :show, :index] do 
    resources :items, only: [:create, :show, :index, :destroy]
 end
end
