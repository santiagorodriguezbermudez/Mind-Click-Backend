Rails.application.routes.draw do
  resources :therapists, default: { format: :json}
  resources :users, default: { format: :json}
  resources :favorites, default: { format: :json}, only: [:create, :destroy]

  root 'therapists#index'
end
