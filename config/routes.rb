Rails.application.routes.draw do
  root 'gmaps#index'
  get 'gmaps/api/create/:id/:lat/:lon' => 'gmaps#api_create'
  resources :gmaps
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
