Rails.application.routes.draw do
  resources :requests
  resources :glossaries
  resources :labels

  root 'glossaries#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
