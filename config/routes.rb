Rails.application.routes.draw do
  get 'webhook/receive'
  get 'welcome/index'
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  post '/webhook', to: 'webhook#receive'
end
