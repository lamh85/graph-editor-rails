Rails.application.routes.draw do
  resources :vertices, only: [:index, :update]
end
