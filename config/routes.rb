# config/routes.rb

Rails.application.routes.draw do
  resources :orcamentos
  resources :orcamentos
  resources :produtos
  root 'home#index'

  resources :clientes
end
