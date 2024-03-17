Rails.application.routes.draw do

  devise_for :users, path: '', path_names: {
    sign_in: 'login',
    sign_out: 'logout',
    registration: 'signup'
  },
  controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  namespace :api do
    namespace :v1 do
      resources :products
      resources :orders
      resources :addresses
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
