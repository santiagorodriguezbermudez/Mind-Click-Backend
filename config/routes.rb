Rails.application.routes.draw do
  scope '/api', defaults: {format: :json} do
    resources :therapists
    resources :users, only: [:show] do
      resources :favorites, only: [:index, :create, :destroy]
    end
    post 'login', to: 'authentication#authenticate'
    post 'signup', to: 'users#create'
  end
end
