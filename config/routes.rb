Rails.application.routes.draw do

  root 'welcome#home'

  get '/family_members/busy' => 'family_members#busy'

  resources :family_members

  resources :categories

  resources :categories do 
    resources :events, only: [:index, :show]
  end

  resources :events

  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end



