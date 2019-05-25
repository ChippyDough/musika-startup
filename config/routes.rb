Rails.application.routes.draw do

  resources :charges
  
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users

  
  get '/myprojects' => 'project#list'
  post '/free' => 'charge#free'
  post '/create' => 'charges#create'

  root 'pages#home'

  resources :project do
  	resources :task, only: [:show]
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.htm
end
