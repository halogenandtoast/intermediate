Shouter::Application.routes.draw do
  constraints Clearance::Constraints::SignedIn.new do
    get '/' => 'dashboards#show'
  end

  root to: 'welcome#index'
  resource :dashboard, only: :show
  resources :shouts, only: :create
end
