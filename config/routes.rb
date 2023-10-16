Rails.application.routes.draw do
  devise_for :users, :pots
  #get 'home/index'
  resources :pots
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root 'home#index'
  get 'home/about'
  get 'pots/destroy'
  get 'pots/trash_em'
  get 'home/trash_em_all'
  # Defines the root path route ("/")
  # root "articles#index"
end
