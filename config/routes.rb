Rails.application.routes.draw do

  root 'welcome#home'

  get '/family_members/busy' => 'family_members#busy'

  resources :family_members

  resources :categories

  get '/categories/:id/events', to: 'categories#show', as: 'category_events'
  
  resources :categories, only: [:show] do 
    resources :events, only: [:show, :new, :edit]
  end

  resources :events 

  resources :family_member_events

  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end



