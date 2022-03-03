Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :users, only: [:show, :destroy, :edit, :update]
  get '/profile', to: 'users#user_profile'
  patch '/profile', to: 'user#user_profile', as: :user_profile_update
  resources :categories, only: [:index, :show] do
    resources :hobbies, only: [:index, :show]
  end
  resources :matches, only: [:new, :create, :index, :show, :destroy] do
    resources :messages, only: [:create, :index]
  end
  resources :user_hobbies, only: [] do
    collection do
      post "create_many"
    end
  end
end
