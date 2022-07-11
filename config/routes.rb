Rails.application.routes.draw do
  root to: 'main#index'

  get 'about-page', to: 'about#index', as: :about

  #Passwords
  get "password", to: "password#edit"
  patch "password", to: "password#update"


  #Sign up
  get 'sign_up', to: 'registrations#new'
  post 'sign_up', to: 'registrations#create'

  #Login 
  get 'sign_in', to: 'sessions#new'
  post 'sign_in', to: 'sessions#create'

  #Log out user
  delete 'logout', to: 'sessions#destroy'
end
