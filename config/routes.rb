Rails.application.routes.draw do

  devise_for :users
  resources :images do
    resources :tags
    get :share, on: :member
  end

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "images#index"

end
