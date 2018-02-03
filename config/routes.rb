Rails.application.routes.draw do
  root 'gmaps#index'
  get 'gmaps/api/create/:index/:lat/:lon' => 'gmaps#api_create'
  get 'gmaps/api/update/:index/:lat/:lon' => 'gmaps#api_update'
  resources :gmaps
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
