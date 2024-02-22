Rails.application.routes.draw do
  resources :vertices, only: [:index]
end
