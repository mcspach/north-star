Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions'
    # unlocks: 'users/unlocks',
    # registrations: 'users/registrations',
    # passwords: 'users/passwords',
    # omniauth: 'users/omniauth',
    # configurations: 'users/configurations'
  }

  root 'projects#index'

  resources :projects do
    resources :phases do
      resources :action_items
    end
  end
end

# resources :tasks do
#   post :toggle, on: :member
# end