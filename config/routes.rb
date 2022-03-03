Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :users, only: [:index, :show, :destroy, :edit, :update]
  get 'users/:id/match', to: 'users#match', as: 'match_user'
  resources :categories, only: [:index, :show] do
    resources :hobbies, only: [:index, :show]
  end
  resources :matches, only: [:new, :create, :index, :show, :destroy] do
    resources :messages, only: [:create, :index]
  end
end
