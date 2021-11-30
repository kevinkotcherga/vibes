Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :chatrooms, only: :show do
    resources :messages, only: :create
  end

  get '/matches/launch', to: 'matches#launch'
  # get '/matches/:id/result', to: 'matches#result'
  # get '/matches/:id/reveal', to: 'matches#reveal'
  # get '/matches/:id/picture', to: 'matches#picture'
  get '/matches/activity', to: 'matches#activity'
  get '/matched_users', to: 'matches#matched_users'

  resources :matches do
    member do
      get :result
      get :reveal
      get :picture
    end
  end

  # get '/chatrooms/show', to: 'chatrooms#show'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # resources :profiles, only: [:new, :create]
  resource :personality_questionnaire, only: [:new, :create]
end
