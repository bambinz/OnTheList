Rails.application.routes.draw do
  root 'home#dashboard'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :lists, only: [:show, :index]

end
