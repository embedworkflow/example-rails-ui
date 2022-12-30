Rails.application.routes.draw do
  resources :workflows, only: [:index, :new, :show]
end
