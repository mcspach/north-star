Rails.application.routes.draw do
  root 'phases#index'

  resources :tasks do
    post :toggle, on: :member
  end

  resources :projects do
    resources :phases do
      resources :action_items
    end
  end
end
