Rails.application.routes.draw do

  get 'appts/index'
  get 'appts/show'
  get 'appts/new'
  get 'appts/edit'
  get 'users/index'
  get 'users/show'
  root "users#index"

  resources :users

  resources :doctors do 
    resources :appts

  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
