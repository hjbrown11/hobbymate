Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :users, only: [:index, :show, :destroy, :edit, :update]


  get 'new_match', to: 'matches#new_match', as: :new_match


  resources :categories, only: [:index, :show] do
    resources :hobbies, only: [:index, :show]
  end
  resources :matches, except: :edit do
    resources :messages, only: [:create, :index]
  end

  resources :user_hobbies, only: [:create, :new] do
    collection do
      post "create_many"
    end
  end


end
