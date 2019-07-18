Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  namespace :api, defaults: { format: :json } do

    mount_devise_token_auth_for 'User', at: 'auth',
        controllers: {
          sessions: 'api/devise_token_auth/sessions'
        }
    resources :restroom, only: [:create, :destroy, :show, :index, :update]
    resources :review, only: [:create, :destroy, :show, :index, :update]
  end
end
