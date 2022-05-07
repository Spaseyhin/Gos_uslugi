# frozen_string_literal: true

Rails.application.routes.draw do
  get 'repairs/index'
  get 'repairs/new'
  get 'repairs/create'
  get 'repairs/destroy'
  get 'resumes/index'
  get 'resumes/new'
  get 'resumes/create'
  get 'resumes/destroy'
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
  get 'resumes/index'
  get 'resumes/specialists'
  get 'resumes/read'
  get 'repairs/index'
  root "resumes#main"
  
  resources :repairs, only: [:index, :new, :create, :destroy]
  resources :resumes, only: [:index, :new, :create, :destroy]
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
