Rails.application.routes.draw do
  root 'gmaps#index'
  get 'gmaps/api/create/:index/:lat/:lon/:status' => 'gmaps#api_create'
  get 'gmaps/api/create' => 'gmaps#api_create'
  get 'gmaps/api/update/:index/:lat/:lon/:status' => 'gmaps#api_update'
  get 'gmaps/api/update' => 'gmaps#api_update'
  resources :gmaps
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
