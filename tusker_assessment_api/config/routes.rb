Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :prospects, only: [:index]
  root 'prospects#index'
end
