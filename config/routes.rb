Rails.application.routes.draw do
  resources :priorities
  resources :systems
  resources :dependencies
  resources :teams
end
