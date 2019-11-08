Rails.application.routes.draw do

  # get 'cocktails', to: 'cocktails#index'
  # get 'cocktails/:id', to: 'cocktails#show'
  # get 'cocktails/new'
  # post 'cocktails', to: 'cocktails#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :cocktails, only: [:index, :show, :new, :create] do
    resources :doses, only: [:new, :create, :destroy]
  end
end

