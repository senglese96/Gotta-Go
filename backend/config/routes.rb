Rails.application.routes.draw do
  root to: "static_pages#root"

  namespace :api, defaults: { format: :json } do
    resources :users, only: [:create, :show]
    resource :session, only: [:create, :destroy]
    resources :restroom, only: [:create, :destroy, :show, :index, :update]
    resources :review, only: [:create, :destroy, :show, :index, :update]
  end
end
