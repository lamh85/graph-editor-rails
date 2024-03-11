Rails.application.routes.draw do
  resources :vertices, only: [:index, :update, :destroy]
  resources :edges, only: [:index, :update, :destroy]
end
