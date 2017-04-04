Rails.application.routes.draw do
  resources :label_requests
  resources :glossary_labels
  resources :glossaries do
    resources :glossary_requests, only: [:edit, :update, :destroy]
  end

  resources :labels
  resources :glossary_requests, only: [:create, :new, :index, :show]

  root 'glossaries#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
