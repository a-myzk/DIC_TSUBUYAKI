Rails.application.routes.draw do
  get '/posts', to: 'posts#home'
  resources :posts
end