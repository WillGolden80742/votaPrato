Rails.application.routes.draw do
  resources :qualificacaos
  resources :clientes
  resources :restaurantes
  root 'restaurantes#index'

  get 'restaurantes/avaliar', to: "restaurantes#avaliar"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
