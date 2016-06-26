# frozen_string_literal: true
Rails.application.routes.draw do
  get '/' => 'home#index', as: :root_path

  resources :severity_levels
  resources :incident_types
  resources :fires
  resources :incidents
  devise_for :users, controllers: { registrations: 'registrations' }
end
