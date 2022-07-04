Rails.application.routes.draw do
  # GET root
  root to: 'main#index'

  # GET /about
  get 'about-us', to: 'about#index', as: :about
end
