Shouter::Application.routes.draw do
  constraints Clearance::Constraints::SignedIn.new do
    get '/' => 'dashboards#show'
  end

  root to: 'welcome#index'
  resource :dashboard, only: :show
  resources :shouts, only: :create
  resources :users, only: :show
  post 'users/:id/follow' => 'following_relationships#create', as: :follow_user
  get 'search' => 'searches#new'
  post 'search' => 'searches#create'

  namespace :api do
    resources :users, only: :show
  end
end
