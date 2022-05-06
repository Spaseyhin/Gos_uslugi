# frozen_string_literal: true

Rails.application.routes.draw do
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
  root "resumes#main"
  get 'resumes/index'
  get 'resumes/specialists'
  get 'resumes/read'
  resources :users
  resources :resumes, only: [:index, :new, :create, :destroy]
   
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
