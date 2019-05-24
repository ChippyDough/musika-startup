Rails.application.routes.draw do
 
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users

  root 'pages#home'
  post '/free' => 'charge#free'

  resources :project do
  	resources :task, only: [:show]
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.htm
end
