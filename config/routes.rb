Rails.application.routes.draw do

  # get 'cocktails', to: 'cocktails#index'
  # get 'cocktails/:id', to: 'cocktails#show'
  # get 'cocktails/new'
  # post 'cocktails', to: 'cocktails#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "cocktails#index"
  resources :cocktails, only: [:index, :show, :new, :create] do
    resources :doses, only: [:create]
  end
    resources :doses, only: [:destroy]
end

