Rails.application.routes.draw do
  scope '/api', defaults: {format: :json} do
    resources :therapists
    resources :users, except: [:create]
    resources :favorites, only: [:create, :destroy]
    post 'login', to: 'authentication#authenticate'
    post 'signup', to: 'users#create'
  end
end
