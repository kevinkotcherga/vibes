Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :chatrooms, only: :show do
    resources :messages, only: :create
  end

  # resources :profiles, only: [:new, :create]
  resource :personality_questionnaire, only: [:new, :create]
end
