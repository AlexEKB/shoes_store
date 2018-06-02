Rails.application.routes.draw do
  get 'orders/index'
  resources :orders, only: [:create, :index]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
