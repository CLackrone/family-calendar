Rails.application.routes.draw do

  root 'welcome#home'
  resources :categories
  resources :family_members
  resources :events
  devise_for :users
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
