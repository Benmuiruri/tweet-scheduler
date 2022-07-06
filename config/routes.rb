Rails.application.routes.draw do
  # GET root
  root to: 'main#index'

  # GET /about
  get 'about-page', to: 'about#index', as: :about

  # New Signup
  get 'sign_up', to: 'registrations#new'

  #Create New Signup
  post 'sign_up', to: 'registrations#create'

  #Log out user
  delete 'logout', to: 'sessions#destroy'
end
