Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :users, only: %i[index show edit update]

  get 'new_match', to: 'matches#new_match', as: :new_match
  get 'no_match', to: 'matches#no_match', as: :no_match

  resources :categories, only: [:index] do
    resources :hobbies, only: %i[index show]
  end
  resources :matches, except: :edit do
    resources :messages, only: %i[create]
  end

  resources :user_hobbies, only: %i[create new destroy] do
    collection do
      post "create_many"
    end
  end
end
