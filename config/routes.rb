Rails.application.routes.draw do
  root to: 'main#index'

  get 'about-page', to: 'about#index', as: :about

  # Passwords
  get 'password', to: 'passwords#edit', as: :edit_password
  patch 'password', to: 'passwords#update'

  # Send out Password reset
  get 'password/reset', to: 'password_resets#new'
  post 'password/reset', to: 'password_resets#create'

  # Handle Password reset
  get 'password/reset/edit', to: 'password_resets#edit'
  patch 'password/reset/edit', to: 'password_resets#update'

  # Sign up
  get 'sign_up', to: 'registrations#new'
  post 'sign_up', to: 'registrations#create'

  # Login
  get 'sign_in', to: 'sessions#new'
  post 'sign_in', to: 'sessions#create'

  # Log out user
  delete 'logout', to: 'sessions#destroy'
end
