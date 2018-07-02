Rails.application.routes.draw do
  resources :metals
  resources :golds
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
get "/" , to: "static#index"


end
