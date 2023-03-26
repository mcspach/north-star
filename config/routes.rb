Rails.application.routes.draw do
  root 'phases#index'

  resources :tasks do
    post :toggle, on: :member
  end

  resources :admins

  resources :projects do
    resources :users
    resources :phases do
      resources :action_items
    end
  end
end
