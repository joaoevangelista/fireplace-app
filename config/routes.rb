# frozen_string_literal: true
Rails.application.routes.draw do
  resources :severity_levels
  resources :incident_types
  resources :fires
  resources :incidents
  devise_for :users
end
