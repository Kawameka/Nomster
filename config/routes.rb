Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  #includes the index action when using rake routes in command line
  root 'places#index'
end
