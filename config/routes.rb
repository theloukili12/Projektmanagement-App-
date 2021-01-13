Rails.application.routes.draw do

  resources :projects
  resources :teams
  devise_for :users, controllers: {
  	registrations: 'registrations',
  	confirmations: 'confirmations'
  }  

  as :user do
    put '/user/confirmation' => 'confirmations#update', :via => :patch, :as => :update_user_confirmation
  end
  
  root 'home#index'

  end
