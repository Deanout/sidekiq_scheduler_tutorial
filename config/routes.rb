Rails.application.routes.draw do
  get 'published', to: 'posts#published'
  resources :posts

  require 'sidekiq/web'
  mount Sidekiq::Web => '/sidekiq'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
