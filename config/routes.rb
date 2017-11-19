Rails.application.routes.draw do
  devise_for :users, controllers: { confirmations: 'confirmations' }
  root to: 'lounge#index', as: 'lounge',  via: :all



end
