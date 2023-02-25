Rails.application.routes.draw do
  # get 'bookmarks/new'
  # get '/lists', to: 'lists#index'
  # get '/lists/new', to: 'lists#new'
  # post '/lists', to: 'lists#create'
  # get '/lists/:id', to: 'lists#show', as: :list
  # get '/lists/:list_id/bookmarks/new', to: 'bookmarks#new', as: :list_bookmarks
  # post '/lists/:list_id/bookmarks', to: 'bookmarks#create'
  # delete '/bookmarks/:id', to: 'bookmarks#destroy'

  resources :lists, only: [:index, :show, :new, :create] do
    resources :bookmarks, only: [:new, :create]
  end
  resources :bookmarks, only: [:destroy]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"
  # GET "/lists", to: 'lists#index'
end
# root 'lists#index'
# Rails.application.routes.draw do
#   # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
