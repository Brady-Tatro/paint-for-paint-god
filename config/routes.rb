Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "colors#index"
  resources :colors, only: [:index]
  resources :pictures, only: [:index, :show, :new, :create]
end
