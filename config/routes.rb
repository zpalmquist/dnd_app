DndApp::Application.routes.draw do
  get '/auth/google_oauth2', to: 'sessions#create', as: 'google_login'
  get '/auth/google_oauth2/callback', to: 'sessions#create'
  get 'auth/failure', to: redirect('/')
  get 'signout', to: 'sessions#destroy', as: 'signout'

  resources :sessions, only: [:create, :destroy]
  resource :home, only: [:show]

  root to: "home#show"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
