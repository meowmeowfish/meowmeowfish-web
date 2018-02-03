Rails.application.routes.draw do
  root 'gmaps#index'
  resources :gmaps
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
