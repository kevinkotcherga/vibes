Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :chatrooms, only: :show do
    resources :messages, only: :create
  end

  get '/matches/launch', to: 'matches#launch'
  get '/matches/result', to: 'matches#result'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # resources :profiles, only: [:new, :create]
  resource :personality_questionnaire, only: [:new, :create]
end
