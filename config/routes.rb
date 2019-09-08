Rails.application.routes.draw do

  # get 'index', to: 'cocktails#index', as: :index
  root to: "cocktails#index"
  resources :cocktails, only: [:show, :new, :create] do
    resources :doses, only: [:create, :new]
  end
  # get 'show', to: 'cocktails#show', as: :show
  # get 'new', to: 'cocktails#new', as: :new
  # get 'create', to: 'cocktails#create', as: :create
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
