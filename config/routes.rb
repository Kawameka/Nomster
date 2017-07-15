Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # includes the index action when using rake routes in command line
  root 'places#index'
  # adds default routes to rake routes table
  resources :places do
    # nested resources includes the parent resource route
    resources :comments, only: :create
    resources :photos, only: :create
  end
  
end
