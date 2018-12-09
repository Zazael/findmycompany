Rails.application.routes.draw do

  root  'company_addresses#departments'
  get 'signup' => 'users#new'
  get 'reset' => 'users#edit', :as => :reset
  get '/login' => 'sessions#new'
  get '/addresses' => 'company_addresses#index'
  post 'login' => 'sessions#create'
  post 'reset' => 'users#update_password'
  post 'bookmark' => 'bookmarks#create', :as => :bookmark
  post 'unmark' => 'bookmarks#destroy', :as => :unmark
  post '/addresses' => 'company_addresses#index'
  delete 'logout' => 'sessions#destroy'
  resources :users
  resources :company_addresses

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
