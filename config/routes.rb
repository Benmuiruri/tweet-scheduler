Rails.application.routes.draw do
  # GET root
  root to: 'main#index'

  # GET /about
  get 'about-page', to: 'about#index', as: :about
end
