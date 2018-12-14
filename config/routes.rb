Rails.application.routes.draw do
  resources :roles
  resources :prev_works
  resources :projects
  resources :applications
  resources :users

  get '/current_user', to: 'auth#show'
  post '/login', to: 'auth#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
