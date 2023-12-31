Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users
    end
  end
  
  resources :users, only: [:index]
  
  devise_for :users, path: '', path_names: {
    sign_in: 'login',
    sign_out: 'logout',
    registration: 'signup'
  },
  controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
end

