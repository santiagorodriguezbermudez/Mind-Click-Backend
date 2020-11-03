Rails.application.routes.draw do
  scope '/api', defaults: {format: :json} do
    resources :therapists
    resources :users
    resources :favorites, only: [:create, :destroy]
  end
end
