Rails.application.routes.draw do
  resources :posts
  resources :pricings
  resources :announcements
  resources :partnerships
  get 'search_posts', :to => 'posts#search' 
  post 'search_posts', :to => 'posts#search'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "partnerships#index"
end
