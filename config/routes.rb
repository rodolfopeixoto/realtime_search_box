Rails.application.routes.draw do
  root 'articles#index'
  resources :articles, only: [:index]
  resources :searches, only: [:index]

end
