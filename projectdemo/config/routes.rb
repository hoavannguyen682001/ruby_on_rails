Rails.application.routes.draw do
  get 'homes/index'
  # get 'home/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  root "homes#index"
  # Defines the root path route ("/")
  # root "articles#index"
end
