Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :prospects, only: [:index]
  resources :available_packages, only: [:index]

  root 'prospects#index'
  get  '/prospects/next_packages', to: 'prospects#next_packages'
  #get '/', to: 'legacy_quotes#save', as: :save_quote
end
