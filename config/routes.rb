Rails.application.routes.draw do
  get 'resources/index'
  get 'resources/show'
  get 'crops/rice'
  get 'crops/wheat'
  get 'crops/corn'
  root to: 'pages#home'
  get 'history', to: 'pages#history', as: :history

  get 'rice', to: 'crops#rice', as: :rice
  get 'wheat', to: 'crops#wheat', as: :wheat
  get 'corn', to: 'crops#corn', as: :corn

  resources :resources, only: [:index, :show]

  resources :recipes, only: :index do
    collection do
      get :rice
      get :wheat
      get :corn
    end
  end
end
