Rails.application.routes.draw do
  get 'action_items/index'
  get 'action_items/show'
  get 'action_items/create'
  get 'action_items/update'
  get 'action_items/destroy'
  get 'phases/index'
  get 'phases/show'
  get 'phases/create'
  get 'phases/update'
  get 'phases/destroy'
  get 'users/index'
  get 'users/show'
  get 'users/create'
  get 'users/update'
  get 'users/destroy'
  get 'admins/index'
  get 'admins/show'
  get 'admins/create'
  get 'admins/update'
  get 'admins/destroy'
  get 'projects/index'
  get 'projects/show'
  get 'projects/create'
  get 'projects/update'
  get 'projects/destroy'
  root "tasks#index"

  resources :tasks
  post "tasks/:id/toggle", to: "tasks#toggle"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
