# frozen_string_literal: true
Rails.application.routes.draw do
  resources :examples, except: [:new, :edit]
  # Auth Routes
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out/:id' => 'users#signout'
  patch '/change-password/:id' => 'users#changepw'
  resources :users, only: [:index, :show]

  # Game Routes
  # ?=difficulty hard - query parameters
  resources :words, only: [:index, :show, :update, :create]
  get '/get-word/:difficulty' => 'words#getword'

  resources :completed_words, only: [:index, :show, :create]
end
