Rails.application.routes.draw do
  root 'songs#index'
  resources :songs, only: [:create]
  resources :export, only: [:new]
end
