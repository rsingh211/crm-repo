Rails.application.routes.draw do
  # ActiveAdmin setup
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  # Customer Routes
  root "customers#index"
  get "customers/alphabetized", to: "customers#alphabetized"
  get "customers/missing_email", to: "customers#missing_email"
  resources :customers

  # Health check
  get "up" => "rails/health#show", as: :rails_health_check

  # PWA (optional, if needed in future)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
end

