# frozen_string_literal: true
Rails.application.routes.draw do
  resources :completed_words, except: [:new, :edit]
  resources :examples, except: [:new, :edit]
  # Auth Routes
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out/:id' => 'users#signout'
  patch '/change-password/:id' => 'users#changepw'
  resources :users, only: [:index, :show]

  # Game Routes
  resources :words, only: [:index, :show]
  get '/get-word/:difficulty' => 'words#getword'
end
