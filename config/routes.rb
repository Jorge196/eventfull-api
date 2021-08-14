Rails.application.routes.draw do
  
  get '/current_user', to: 'current_user#index'
  resources :comments
  resources :posts, except: [:update, :destroy]
  devise_for :users,  path: '', path_names: {
    sign_in: 'login',
    sign_out: 'logout',
    registration: 'signup'
  },
  controllers: {
    sessions: 'users/sessions',
    registration: 'users/registration'
  }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
