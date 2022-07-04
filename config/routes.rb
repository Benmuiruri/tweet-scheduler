Rails.application.routes.draw do
  # GET root
  root to: 'main#index'

  # GET /about
  get 'about', to: 'about#index'
end
