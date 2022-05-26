# frozen_string_literal: true

Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  get 'user/new'
  get 'users/new'
  get 'article/new'
  get 'index' => 'home#index'
  get 'about' => 'home#about'
  get 'contact' => 'home#contact'
  get 'signup' => 'users#new'
  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'
  get 'resumes/specialists'
  get 'resumes/read'
  root 'resumes#main'

  resources :post, only: %i[index new create destroy]
  resources :electrics, only: %i[index new create destroy]
  resources :equis, only: %i[index new create destroy]
  resources :repairs, only: %i[index new create destroy]
  resources :resumes, only: %i[index new create destroy]
  resources :leaks, only: %i[index new create destroy]
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
