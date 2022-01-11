Rails.application.routes.draw do
  resources :sessions
  resources :qualificacaos
  resources :clientes
  resources :restaurantes
  resources :pratos  
  root 'restaurantes#index'

  get 'restaurantes/avaliar', to: "restaurantes#avaliar"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
