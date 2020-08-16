# frozen_string_literal: true

Rails.application.routes.draw do
  resources :notebooks

  devise_for :users
  root to: 'home#index'
end
