Rails.application.routes.draw do
  root 'projects#index'
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :comments
  resources :projects
  get 'projects/:id/details', to: 'projects#details'
  resources :tasks
  get 'tasks/:id/details', to: 'tasks#details'
  devise_for :users
end
