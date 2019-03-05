Rails.application.routes.draw do

  devise_for :users, :controllers => { registrations: 'registrations' }

  resources :settings, only: [:index]
  resources :calendars, only: [:index, :show] # RJ added index here when trying to integrate calendar into app.
  resources :records, only: [:index, :show]
  recources :notifications, only: [:create]
  resources :goals, only: [:index, :show, :edit, :update]
  resources :clients, only: [:index, :show, :edit, :update, :new, :create, :destroy]
  resources :tasks, only: [:index, :show, :edit, :update, :destroy, :new, :create] do
    collection do
      get :map
      get :intake
    end
  end
  root to: 'goals#index' # Will change this to login page later.
end
